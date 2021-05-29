/*
参考
https://blog.csdn.net/weixin_43795921/article/details/85219249
https://blog.csdn.net/jwq2011/article/details/53674125
*/

#include <ros/ros.h>
// #include <sensor_msgs/GPS.h>
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

#include "gps_msg/Gps_GGA.h"
#include "gps_msg/Gps_RMC.h"
// #include "gps_msg/Gps_INSPVA.h"

using namespace std;

// #define LEN    59   //length of one frame
// #define MAXSIZE (512*LEN)

serial::Serial ser;                 //declare the serial port object 声明串口对象
static std::string RMC_start = "$GNRMC";   // GNRMC 包头
static std::string GGA_start = "$GPGGA";   // GNGGA 包头

std::string gstart = "$G";          //GPS起始标志
std::string gend = "\r\n";          //GPS终止标志

/**
 *******************************************************************************
 * @brief   十六进制格式字符串 转 十六进制格式整数 函数
 * @param   [in] *str 字符串指针
 * @param   [in] size 字符串个数
 * @param   [in] *result 转换结果缓存指针
 * @return  0--转换成功; 1--数据不在范围内;
 * @note    
 *******************************************************************************
 */
unsigned char AsciiToHex(char *str, unsigned char size, unsigned char *result)
{
    unsigned char temp;

    for(*result = 0; size; size--, str++)
    {
        if(('9' >= *str) && (*str >='0') ) temp = *str - '0';
        else if(('F' >= *str) && (*str >='A') ) temp = *str - 'A' + 10;
        else if(('f' >= *str) && (*str >='a') ) temp = *str - 'a' + 10;
        else return 1;  //数据不在范围内
        *result |= temp<<((size-1)*4);
    }
    
    return 0; //转换成功
}

/**
 *******************************************************************************
 * @brief   NMEA 数据帧校验 函数
 * @param   [in] *buf 校验数据帧指针
 * @return  0--校验成功; 1--校验失败; 2--校验数据超长; 3--校验和错误 不是校验和
 * @note    
 *******************************************************************************
 */
unsigned char NMEA_CheckSum(char *buf)
{
    unsigned char i;
    unsigned char chk, result;

    for(chk=buf[1], i=2; (buf[i]!='*')&&(i<255); i++)
    {
        chk ^= buf[i];
    }
    
    if( AsciiToHex(&buf[i+1], 2, &result) ) return 3; //校验和错误 不是校验和
    if(i>=255) return 2; //校验数据超长
    if(chk != result) return 1; //校验失败
    
    return 0; //校验成功
}

//解析GPS
void RecePro(std::string s , ros::Publisher *RMC_pub, ros::Publisher *GGA_pub)
{
    char *temp_s=(char*)s.c_str();
    if(!NMEA_CheckSum(temp_s))  // 校验和
    {
        //分割有效数据，存入vector中
        std::vector<std::string> v;
        std::string::size_type pos1, pos2;  //, temp_pose;
        pos2 = s.find(",");
        pos1 = 0;
        while ( std::string::npos !=pos2 )
        {
            v.push_back( s.substr( pos1, pos2-pos1 ) );
            pos1 = pos2 + 1;
            // temp_pose = s.find(";",pos1);   // INSPVA.msg
            pos2 = s.find(",",pos1);
            // if(temp_pose!=std::string::npos && temp_pose<pos2)
            //     {pos2=temp_pose;}
        }
        if ( pos1 != s.length() )
            v.push_back( s.substr( pos1 ));

        //解析出经纬度
        if (v.size() == 13 && v[0]==RMC_start)  //"$GNRMC")
        {
           
            if(v[2]=="A")
            {
                double lat, lon;
                //纬度
                if (v[3] != "") lat = std::atof(v[3].c_str()) / 100;
                int ilat = (int)floor(lat) % 100;
                lat = ilat + (lat - ilat) * 100 / 60;
                //经度
                if (v[5] != "") lon = std::atof(v[5].c_str()) / 100;
                int ilon = (int)floor(lon) % 1000;
                lon = ilon + (lon - ilon) * 100 / 60;

                std::cout << std::setiosflags(std::ios::fixed)<<std::setprecision(7)<< "纬度：" << lat << " 经度："<< lon << "\n";
                //发布消息到话题
                gps_msg::Gps_RMC GPS_RMC_data;
                GPS_RMC_data.header.stamp = ros::Time::now();
                GPS_RMC_data.utc = std::atof(v[1].c_str());
                GPS_RMC_data.pos_status = v[2];
                GPS_RMC_data.lat = lat;
                GPS_RMC_data.lat_dir = v[4];
                GPS_RMC_data.lon = lon;
                GPS_RMC_data.lon_dir = v[6];
                GPS_RMC_data.speed_Kn = std::atof(v[7].c_str());
                GPS_RMC_data.track_true = std::atof(v[8].c_str());
                GPS_RMC_data.date = std::atoi(v[9].c_str());
                GPS_RMC_data.mag_var = std::atof(v[10].c_str());
                GPS_RMC_data.var_dir = v[11];
                GPS_RMC_data.mode_ind = v[12][0];
                RMC_pub->publish(GPS_RMC_data);
                std::cout << GPS_RMC_data.header.stamp << " publish RMC data" << std::endl;
            }
            else if(v[2]=="V")
            {  
                gps_msg::Gps_RMC GPS_RMC_data;
                GPS_RMC_data.utc = std::atof(v[1].c_str());
                GPS_RMC_data.pos_status = v[2];
                RMC_pub->publish(GPS_RMC_data);
                std::cout << GPS_RMC_data.header.stamp << " publish RMC data" << std::endl;
        
            }
        }
        else if(v.size() == 15 && v[0]==GGA_start) //"$GNGGA")
        {  
            if(v[2] != "" && v[4] != "")
            {
                double lat, lon;
                //纬度
                lat = std::atof(v[2].c_str()) / 100;
                int ilat = (int)floor(lat) % 100;
                lat = ilat + (lat - ilat) * 100 / 60;
                //经度
                lon = std::atof(v[4].c_str()) / 100;
                int ilon = (int)floor(lon) % 1000;
                lon = ilon + (lon - ilon) * 100 / 60;

                gps_msg::Gps_GGA GPS_GGA_data;
                GPS_GGA_data.pos_status = "A";
                GPS_GGA_data.header.stamp = ros::Time::now();
                GPS_GGA_data.utc = std::atof(v[1].c_str());
                GPS_GGA_data.lat = lat;
                GPS_GGA_data.lat_dir = v[3];
                GPS_GGA_data.lon = lon;
                GPS_GGA_data.lon_dir = v[5];
                GPS_GGA_data.qual = std::atoi(v[6].c_str());
                GPS_GGA_data.sats = std::atoi(v[7].c_str());
                GPS_GGA_data.hdop =  std::atof(v[8].c_str());
                GPS_GGA_data.alt =  std::atof(v[9].c_str());
                GPS_GGA_data.a_units = v[10];
                GPS_GGA_data.undulation = std::atof(v[11].c_str());
                GPS_GGA_data.u_units = v[12];
                if(v[13]!="") GPS_GGA_data.age = v[13];
                if(v[14]!="") GPS_GGA_data.stn_ID = std::atoi(v[14].c_str());
                GGA_pub->publish(GPS_GGA_data);
                std::cout << GPS_GGA_data.header.stamp << " publish GGA data" << std::endl;
        
            }else
            {
                gps_msg::Gps_GGA GPS_GGA_data;
                GPS_GGA_data.pos_status = "V";
                GGA_pub->publish(GPS_GGA_data);
                std::cout << GPS_GGA_data.header.stamp << " publish GGA data" << std::endl;
        
            }
           
        }
        // else if(v.size() == 22 && v[0]=="#INSPVAA")
        // {

        // }
    }
}


// 回调函数
//void write_callback(const std_msgs::String::ConstPtr& msg)
//{
//    ROS_INFO_STREAM("Writing to serial port" <<msg->data);
//    ser.write(msg->data);   //发送串口数据
//}


int main (int argc, char** argv)
{
    ros::init(argc, argv, "gps_ros_node"); //Initialize node
    ros::NodeHandle nh;     //declare the node-handle
    //ros::Subscriber write_sub = nh.subscribe("write", 1000, write_callback); //Subscriber other node's msg
    //ros::Publisher read_pub = nh.advertise<std_msgs::String>("IMU_data", 1000);     //Publisher msgtype("name",(int)len of quene)
    // ros::Publisher read_pub = nh.advertise<std_msgs::Float32MultiArray>("IMU_data", 1000);    //imudata publish by flaot_array
    ros::Publisher GPS_RMC_pub = nh.advertise<gps_msg::Gps_RMC>("GPS_RMC_data", 1000);
    ros::Publisher GPS_GGA_pub = nh.advertise<gps_msg::Gps_GGA>("GPS_GGA_data", 1000);
    try
    {
        ser.setPort("/dev/ttyUSB0");
        ser.setBaudrate(115200);
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

    // 发送GPS配置指令
    // char* send_buf = "FRESET\r\n";
    // ser.write((uint8_t*)send_buf, strlen(send_buf));

    // char* send_buf = "CONFIG INS ENABLE\r\n";
    // ser.write((uint8_t*)send_buf, strlen(send_buf));

    char* send_buf = "LOG COM1 GPGGA ONTIME 1\r\n";
    ser.write((uint8_t*)send_buf, strlen(send_buf));
    // send_buf = "LOG COM2 GNRMC ONTIME 1\r\n";
    // ser.write((uint8_t*)send_buf, strlen(send_buf));
   
    // send_buf = "UNLOG COM3 GNGGA\r\n";
    // ser.write((uint8_t*)send_buf, strlen(send_buf));
    // send_buf = "UNLOG COM3 GNRMC\r\n";
    // ser.write((uint8_t*)send_buf, strlen(send_buf));

    // send_buf = "LOG COM3 rawimuxb ONTIME 0.05\r\n";
    // ser.write((uint8_t*)send_buf, strlen(send_buf));
    // send_buf = "LOG COM1 INSPVAA ONTIME 1\r\n";
    // ser.write((uint8_t*)send_buf, strlen(send_buf));
    send_buf = "SAVECONFIG\r\n";
    ser.write((uint8_t*)send_buf, strlen(send_buf));

    ros::Rate loop_rate(50); // set loop_rate,unit:Hz
   
    string strRece, temp_str;
    while (ros::ok())
    {
        if (ser.available())
        {
            //1.读取串口信息：
            // ROS_INFO_STREAM("Reading from serial port\n");
            temp_str = ser.read(ser.available());
            std::cout << temp_str;
            strRece += temp_str;

            //strRece = "$GNGGA,122020.70,3908.17943107,N,11715.45190423,E,1,17,1.5,19.497,M,-8.620,M,,*54\r\n";
            //2.截取数据、解析数据：
            int i = 0, start = -1, end = -1;
            while ( i < strRece.length() )
            {
                start = strRece.find(gstart);   //找起始标志
                if (start == -1)   //如果没找到，丢弃这部分数据，但要留下最后2位,避免遗漏掉起始标志
                {
                    if (strRece.length() > 1)  
                        strRece = strRece.substr(strRece.length()-2);
                        break;

                }  
                else    //如果找到了起始标志，开始找终止标志
                {
                    end = strRece.find(gend);
                    if (end == -1)      //如果没找到，把起始标志开始的数据留下，前面的数据丢弃，然后跳出循环
                    {
                        strRece = strRece.substr(start);
                        break;
                    }
                    else                //如果找到了终止标志，把这段有效的数据剪切给解析的函数，剩下的继续开始寻找
                    {
                        i = end;
                        std::cout << strRece.substr(start, end+2-start) << std::endl;
                        RecePro(strRece.substr(start,end+2-start), &GPS_RMC_pub, &GPS_GGA_pub);
       
                        //如果剩下的字符大于等于3，则继续循环寻找有效数据,如果所剩字符小于等于3则跳出循环
                        if ( i+4 < strRece.length())
                            strRece = strRece.substr(end+2);
                        else
                        {   strRece = strRece.substr(end+2);
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


/*
int main (int argc, char** argv)
{
    ros::init(argc, argv, "gps_ros_node"); //Initialize node
    ros::NodeHandle nh;     //declare the node-handle
    //ros::Subscriber write_sub = nh.subscribe("write", 1000, write_callback); //Subscriber other node's msg
    //ros::Publisher read_pub = nh.advertise<std_msgs::String>("IMU_data", 1000);     //Publisher msgtype("name",(int)len of quene)
    // ros::Publisher read_pub = nh.advertise<std_msgs::Float32MultiArray>("IMU_data", 1000);    //imudata publish by flaot_array
    ros::Publisher GPS_RMC_pub = nh.advertise<gps_msg::Gps_RMC>("GPS_RMC_data", 1000);
    ros::Publisher GPS_GGA_pub = nh.advertise<gps_msg::Gps_GGA>("GPS_GGA_data", 1000);
    try
    {
        ser.setPort("/dev/ttyUSB1");
        ser.setBaudrate(115200);
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

    ros::Rate loop_rate(50); // set loop_rate,unit:Hz
   
    string strRece, temp_str;
    while (ros::ok())
    {
        if (ser.available())
        {
            //1.读取串口信息：
            // ROS_INFO_STREAM("Reading from serial port\n");
            temp_str = ser.read(ser.available());
            std::cout << temp_str;
            strRece = temp_str;
            RecePro(strRece, &GPS_RMC_pub);        
        }
        ros::spinOnce();
        loop_rate.sleep();
    }
}
*/