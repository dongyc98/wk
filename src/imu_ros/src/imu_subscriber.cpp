//
// Created by dyc on 2021/4/13.
//

#include "ros/ros.h"
#include <sensor_msgs/Imu.h>
#include <fstream>
#include <iostream>
#include <iomanip>



void subCallback(const sensor_msgs::Imu &imu_data)
{
//    imu_data.header.stamp = ros::Time::now();
//     imu_data.header.frame_id = "base_link";
//     //角速度
//     imu_data.angular_velocity.x = imudata.x_gyro;
//     imu_data.angular_velocity.y = imudata.y_gyro;
//     imu_data.angular_velocity.z = imudata.z_gyro;
//     //线加速度
//     imu_data.linear_acceleration.x = imudata.x_accl;
//     imu_data.linear_acceleration.y = imudata.y_accl;
//     imu_data.linear_acceleration.z = imudata.z_accl;
    std::cout << imu_data.header.stamp << " recevie once!" << std::endl;
    std::ofstream out("/home/dyc/imu_data.txt",std::ios::app);
    //<<fixed<<setprecision(2)的作用就是将输出结果转化为小数点后两位
    // out<<fixed<<setprecision(2)<<way_points(0)<<"\t"<<way_points(1)<<"\t"<<way_points(2)<<std::endl;
    out<<std::fixed<<std::setprecision(7)<<imu_data.header.stamp <<"\t\t" \
         <<imu_data.angular_velocity.x<<"\t\t" \
         <<imu_data.angular_velocity.y<<"\t\t" \
         <<imu_data.angular_velocity.z<<"\t\t" \
         <<imu_data.linear_acceleration.x<<"\t\t" \
         <<imu_data.linear_acceleration.y<<"\t\t" \
         <<imu_data.linear_acceleration.z<<"\t\t" \
         <<std::endl;
    // out<<fixed<<setprecision(2)<<x<<" "<<y<<" "<<z<<std::endl;
    out.close();
}

int main(int argc, char **argv){

    ros::init(argc,argv,"imu_ros_subscriber"); //初始化节点
    ros::NodeHandle nh;
    ros::Subscriber sub = nh.subscribe("IMU_data", 100, subCallback);

    ros::spin ();
    return 0;
}