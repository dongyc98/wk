//
// Created by dyc on 2021/4/13.
//

#include "../include/imu_node.h"
#include "../include/hg4930_dataparser.h"
#include <ros/ros.h>
#include <sensor_msgs/Imu.h>
#include <serial/serial.h>  //Ros already built-in serial port package
#include <std_msgs/String.h>
#include <std_msgs/Empty.h>
#include <std_msgs/Float32MultiArray.h>

#define LEN    44            //length of one frame
#define MAXSIZE (512*LEN)

serial::Serial ser; //declare the serial port object


// Quene operation:1 init;2:add data:enquene();3,grab data:dequene();4:task end:destory quene!
typedef uint8_t QelemType;
typedef struct
{
    QelemType *base;
    int front;
    int rear;
}squene;

void Initquene(squene &s)
{
    s.base=(QelemType *)malloc(MAXSIZE*sizeof(QelemType));
    if(!s.base)
        exit(-1);
    s.front=0;
    s.rear=0;
}

void enquene(squene &s,QelemType e)
{
    if(((s.rear+1)%MAXSIZE)==s.front)
    {
        printf("Quene is Full!\n");
        exit(-1);
    }
    s.base[s.rear]=e;
    s.rear=(s.rear+1)%MAXSIZE;
}

void dequene(squene &s,QelemType &e)
{
    if(s.rear==s.front)
    {
        printf("Quene is Empty!\n");
        exit(-1);
    }
    e=s.base[s.front];
    s.front=(s.front+1)%MAXSIZE;
}

int getQlength(squene s)
{
    return (s.rear-s.front+MAXSIZE)%MAXSIZE;
}

void destory(squene &s)
{
    free(s.base);
    s.base=NULL;
}

char check_and(QelemType *writebuf, int len)
{
    int i =0;
    char sum=0;
    for (i=2;i<len;i++)
    {
        sum+=writebuf[i];
    }
    return sum;
}

//回调函数
//void write_callback(const std_msgs::String::ConstPtr& msg)
//{
//    ROS_INFO_STREAM("Writing to serial port" <<msg->data);
//    ser.write(msg->data);   //发送串口数据
//}

int main (int argc, char** argv)
{
    ros::init(argc, argv, "imu_ros_node"); //Initialize node
    ros::NodeHandle nh;     //declare the node-handle
    //ros::Subscriber write_sub = nh.subscribe("write", 1000, write_callback); //Subscriber other node's msg
    //ros::Publisher read_pub = nh.advertise<std_msgs::String>("IMU_data", 1000);     //Publisher msgtype("name",(int)len of quene)
    // ros::Publisher read_pub = nh.advertise<std_msgs::Float32MultiArray>("IMU_data", 1000);    //imudata publish by flaot_array
    ros::Publisher read_pub = nh.advertise<sensor_msgs::Imu>("IMU_data", 100);

    try
    {
        ser.setPort("/dev/ttyUSB0");
        ser.setBaudrate(1000000);
        serial::Timeout to = serial::Timeout::simpleTimeout(1000);
        ser.setTimeout(to);
        ROS_INFO_STREAM("opening port");
        ser.open();
    }
    catch (serial::IOException& e)
    {
        ROS_ERROR_STREAM("Unable to open port ");
        return -1;
    }

    if(ser.isOpen())     //check port Isopen?
    {
        ROS_INFO_STREAM("SerialPort ttyUSB0 initialized");
    }
    else
    {
        return -1;
    }

    QelemType revBuf[LEN];
    hg4930_dataparser::HG4930InertialMessage imudata;
    squene Qs;
    int len;    //the len of Qs
    Initquene(Qs);        //must initial Qs, otherwise segment dault

    ros::Rate loop_rate(100); // set loop_rate,unit:Hz
    while(ros::ok())
    {
        //ser.write(sendbuf,9);   //tranmit data:ser.write(uint8_t *buf,size_t len)
        uint8_t buff[1024]={0};
        size_t n=ser.available();
        if(n!=0)
        {
            printf("reci:    ");
            n=ser.read(buff,n);
            for(int i=0;i<n;i++)
            {
                // printf(" %x",buff[i]);
                enquene(Qs,buff[i]);    // put revi_data into Qs
            }
            printf("\n");
        }
        len=getQlength(Qs);    // get len of current Qs
        while(len>=LEN)
        {
            if(Qs.base[Qs.front]==0x0E)
            {
                int real_len;
                if(Qs.base[Qs.front+1]==0x01)
                {
                    real_len = 20;
                }
                else{
                    real_len = 44;
                }
                for(int i=0;i<real_len;i++)
                {
                    dequene(Qs,revBuf[i]);
                }
                int status = 0;
                switch(revBuf[1])
                {
                    case 0x01:
                    {
                        status = hg4930_dataparser::GetHG4930X01ControlMessage(revBuf, 0, &imudata.ControlMessage);
                        break;
                    }
                    case 0x02:
                    {
                        status = hg4930_dataparser::GetHG4930X02InertialMessage(revBuf, 1, &imudata);
                        break;
                    }
                    default:
                    {
                        status = 2;
                        printf("Error control message!\n");
                    }
                }
                if(status !=0 ){
                    printf("Error Checksum etc!\n");
                }
                printf("X_gyro=%f  Y_gyro=%f   Z_gyro=%f  \n", imudata.ControlMessage.AngularRate[0], imudata.ControlMessage.AngularRate[1], imudata.ControlMessage.AngularRate[2]);
                printf("X_accl=%f  Y_accl=%f   Z_accl=%f  \n", imudata.ControlMessage.LinearAcceleration[0], imudata.ControlMessage.LinearAcceleration[1], imudata.ControlMessage.LinearAcceleration[2]);
                // printf("X_gyro=%f", imudata.x_gyro);
                printf("\n");

            }
            else
            {
                // char ch;
                QelemType ch;
                dequene(Qs,ch);
                // printf("choas ASCII=%c\n",ch);
            }
            len=getQlength(Qs);
        }
        sensor_msgs::Imu imu_data;
        imu_data.header.stamp = ros::Time::now();
        imu_data.header.frame_id = "base_link";
        //角速度
        imu_data.angular_velocity.x = imudata.ControlMessage.AngularRate[0];
        imu_data.angular_velocity.y = imudata.ControlMessage.AngularRate[1];
        imu_data.angular_velocity.z = imudata.ControlMessage.AngularRate[2];
        //线加速度
        imu_data.linear_acceleration.x = imudata.ControlMessage.LinearAcceleration[0];
        imu_data.linear_acceleration.y = imudata.ControlMessage.LinearAcceleration[1];
        imu_data.linear_acceleration.z = imudata.ControlMessage.LinearAcceleration[2];
        read_pub.publish(imu_data);
        printf("published one data!\n");
        //处理ROS的信息，比如订阅消息,并调用回调函数
        ros::spinOnce();
        loop_rate.sleep();
    }
}