cmake_minimum_required(VERSION 2.8.3)
project(gps_ros)
add_compile_options(-std=c++11)



find_package(catkin REQUIRED COMPONENTS
##  message_generation
  roscpp
  rospy
  std_msgs
  sensor_msgs
  serial
  gps_msg
)

##add_message_files(FILES
##  Gps.msg
##)

##generate_messages(DEPENDENCIES
##  std_msgs
##)

catkin_package(
##  message_runtime
##  INCLUDE_DIRS include
##  LIBRARIES gps-ros
  CATKIN_DEPENDS roscpp rospy std_msgs 
  DEPENDS system_lib
)

include_directories(
  include 
  ${catkin_INCLUDE_DIRS} 
# ${PCL_INCLUDE_DIRS}
)



add_executable(${PROJECT_NAME}_node src/gps_node.cpp)
add_executable(${PROJECT_NAME}_subscriber src/gps_subscriber.cpp)


add_dependencies(${PROJECT_NAME}_node ${${PROJECT_NAME}_EXPORTED_TARGETS} ${catkin_EXPORTED_TARGETS})
add_dependencies(${PROJECT_NAME}_subscriber ${${PROJECT_NAME}_EXPORTED_TARGETS} ${catkin_EXPORTED_TARGETS})


target_link_libraries(${PROJECT_NAME}_node ${catkin_LIBRARIES})
target_link_libraries(${PROJECT_NAME}_subscriber ${catkin_LIBRARIES})



 
