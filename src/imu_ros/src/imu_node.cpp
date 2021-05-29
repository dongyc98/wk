#include "../include/imu_node.h"
#include "../include/hg4930_dataparser.h"
#include <ros/ros.h>
#include <sensor_msgs/Imu.h>
#include <serial/serial.h>  //Ros already built-in serial port package
#include <std_msgs/String.h>
#include <std_msgs/Empty.h>
#include <std_msgs/Float32MultiArray.h>
#include <string>
#include <vector>
#include <sstream>
#include <cmath>
#include <cstdlib>  //string转化为double
#include <iomanip>  //保留有效小数


serial::Serial ser; //declare the serial port object

int main (int argc, char** argv)
{
    ros::init(argc, argv, "imu_ros_node"); //Initialize node
    ros::NodeHandle nh;     //declare the node-handle
    ros::Publisher read_pub = nh.advertise<sensor_msgs::Imu>("IMU_data", 100);

    try
    {
        ser.setPort("/dev/ttyUSB1");
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
        ROS_INFO_STREAM("SerialPort ttyUSB1 initialized");
    }
    else
    {
        return -1;
    }

    hg4930_dataparser::HG4930InertialMessage imudata;

    ros::Rate loop_rate(100); // set loop_rate,unit:Hz
    std::string strRece, temp_str;
    while(ros::ok())
    {
        //ser.write(sendbuf,9);   //tranmit data:ser.write(uint8_t *buf,size_t len)
        if (ser.available())
        {
            temp_str = ser.read(ser.available());
            std::cout << temp_str;
            strRece += temp_str;

            int i = 0, start = -1, end = -1;
            while ( i < strRece.length() )
            {
                start = strRece.find((char)0x0E);
                if (start == -1)   //如果没找到，丢弃这部分数据，但要留下最后2位,避免遗漏掉起始标志
                {
                    if (strRece.length() > 1)  
                        strRece = strRece.substr(strRece.length()-1);
                        break;

                } 
                else    //如果找到了起始标志，开始找终止标志
                {
                    // end = strRece.find(gend);
                    if( strRece.length() - start < 44){
                        end = -1;
                        strRece = strRece.substr(start);
                        break;
                    }
                    else
                    {
                        if(strRece.at(start + 1) == (char)0x01)
                        {
                            end = start + 20 - 1;
                            std::cout << strRece.substr(start, end+1-start) << std::endl;
                            unsigned char revBuf[21];
                            std::copy( strRece.begin()+start, strRece.begin()+end+1, revBuf);
                            revBuf[21] = 0;
                            hg4930_dataparser::GetHG4930X01ControlMessage(revBuf, 0, &imudata.ControlMessage);
                            //
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
                            std::cout << imu_data.header.stamp << " published one 0x01 data!" << std::endl;
                        }else if(strRece.at(start + 1) == (char)0x02)
                        {
                            end = start + 44 - 1;
                            std::cout << strRece.substr(start, end+1-start) << std::endl;
                            unsigned char revBuf[45];
                            std::copy( strRece.begin()+start, strRece.begin()+end+1, revBuf);
                            revBuf[45] = 0;
                            hg4930_dataparser::GetHG4930X02InertialMessage(revBuf, 0, &imudata);
                            //
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
                            std::cout << imu_data.header.stamp << " published one 0x02 data!" << std::endl;
                        }else{
                            std::cout<< "Error control message" << std::endl;
                        }
                        i = end;
 
                        //如果剩下的字符大于等于3，则继续循环寻找有效数据,如果所剩字符小于等于3则跳出循环
                        if ( i+3 < strRece.length())
                            strRece = strRece.substr(end+1);
                        else
                        {   strRece = strRece.substr(end+1);
                            break;
                        }
                    }
                }

            }

        }
        ros::spinOnce();
        loop_rate.sleep();
    }
}