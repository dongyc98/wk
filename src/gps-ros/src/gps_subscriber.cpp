#include "ros/ros.h"
#include <sensor_msgs/Imu.h>
#include <fstream>
#include <iostream>
#include <iomanip>

#include "gps_msg/Gps_GGA.h"
#include "gps_msg/Gps_RMC.h"


using namespace std;


void rmc_subCallback(const gps_msg::Gps_RMC &gps_rmc_data)
{
    if(gps_rmc_data.pos_status=="A")
    {
        std::ofstream out("/home/dyc/GPS_RMC_data.txt",std::ios::app);
        std::cout << gps_rmc_data.header.stamp << " receive RMC data" << std::endl;
        //<<fixed<<setprecision(2)的作用就是将输出结果转化为小数点后两位 
        // out<<fixed<<setprecision(2)<<way_points(0)<<"\t"<<way_points(1)<<"\t"<<way_points(2)<<std::endl;
        out<<fixed<<setprecision(2)<<gps_rmc_data.header.stamp <<"\t" \
            <<gps_rmc_data.utc<<"\t" \
            <<gps_rmc_data.pos_status<<"\t" \
            <<gps_rmc_data.lat<<"\t" \
            <<gps_rmc_data.lat_dir<<"\t" \
            <<gps_rmc_data.lon<<"\t" \
            <<gps_rmc_data.lon_dir<<"\t" \
            <<gps_rmc_data.speed_Kn<<"\t" \
            <<std::endl; 
        // out<<fixed<<setprecision(2)<<x<<" "<<y<<" "<<z<<std::endl;
        out.close();
    }
}

void gga_subCallback(const gps_msg::Gps_GGA &gps_gga_data)
{
    if(gps_gga_data.pos_status=="A")
    {
        std::ofstream out("/home/dyc/GPS_GGA_data.txt",std::ios::app);
        std::cout << gps_gga_data.header.stamp << " receive GGA data" << std::endl;
        //<<fixed<<setprecision(2)的作用就是将输出结果转化为小数点后两位 
        // out<<fixed<<setprecision(2)<<way_points(0)<<"\t"<<way_points(1)<<"\t"<<way_points(2)<<std::endl;
        out<<fixed<<setprecision(2)<<gps_gga_data.header.stamp <<"\t" \
            <<gps_gga_data.utc<<"\t" \
            <<gps_gga_data.pos_status<<"\t" \
            <<gps_gga_data.lat<<"\t" \
            <<gps_gga_data.lat_dir<<"\t" \
            <<gps_gga_data.lon<<"\t" \
            <<gps_gga_data.lon_dir<<"\t" \
            <<gps_gga_data.alt<<"\t" \
            <<gps_gga_data.a_units<<"\t" \
            <<gps_gga_data.undulation<<"\t" \
            <<gps_gga_data.u_units<<"\t" \
            <<(int)(gps_gga_data.qual)<<"\t" \
            <<(int)(gps_gga_data.sats)<<"\t" \
            <<gps_gga_data.hdop<<"\t" \
            <<std::endl; 
            // out<<fixed<<setprecision(2)<<x<<" "<<y<<" "<<z<<std::endl;
        out.close();
    }
}
 
int main(int argc, char **argv){

    ros::init(argc,argv,"gps_ros_subscriber"); //初始化节点
    ros::NodeHandle nh;
    ros::Subscriber rmc_sub = nh.subscribe("GPS_RMC_data", 1000, rmc_subCallback);
    ros::Subscriber gga_sub = nh.subscribe("GPS_GGA_data", 1000, gga_subCallback);
    ros::spin();
    return 0;
}