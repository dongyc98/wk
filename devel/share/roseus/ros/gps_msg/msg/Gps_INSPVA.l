;; Auto-generated. Do not edit!


(when (boundp 'gps_msg::Gps_INSPVA)
  (if (not (find-package "GPS_MSG"))
    (make-package "GPS_MSG"))
  (shadow 'Gps_INSPVA (find-package "GPS_MSG")))
(unless (find-package "GPS_MSG::GPS_INSPVA")
  (make-package "GPS_MSG::GPS_INSPVA"))

(in-package "ROS")
;;//! \htmlinclude Gps_INSPVA.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass gps_msg::Gps_INSPVA
  :super ros::object
  :slots (_header _week_gnss _seconds _lat _lon _height _north_velocity _east_velocity _up_velocity _roll _pitch _azimuth _status ))

(defmethod gps_msg::Gps_INSPVA
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:week_gnss __week_gnss) 0)
    ((:seconds __seconds) 0.0)
    ((:lat __lat) 0.0)
    ((:lon __lon) 0.0)
    ((:height __height) 0.0)
    ((:north_velocity __north_velocity) 0.0)
    ((:east_velocity __east_velocity) 0.0)
    ((:up_velocity __up_velocity) 0.0)
    ((:roll __roll) 0.0)
    ((:pitch __pitch) 0.0)
    ((:azimuth __azimuth) 0.0)
    ((:status __status) "")
    )
   (send-super :init)
   (setq _header __header)
   (setq _week_gnss (round __week_gnss))
   (setq _seconds (float __seconds))
   (setq _lat (float __lat))
   (setq _lon (float __lon))
   (setq _height (float __height))
   (setq _north_velocity (float __north_velocity))
   (setq _east_velocity (float __east_velocity))
   (setq _up_velocity (float __up_velocity))
   (setq _roll (float __roll))
   (setq _pitch (float __pitch))
   (setq _azimuth (float __azimuth))
   (setq _status (string __status))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:week_gnss
   (&optional __week_gnss)
   (if __week_gnss (setq _week_gnss __week_gnss)) _week_gnss)
  (:seconds
   (&optional __seconds)
   (if __seconds (setq _seconds __seconds)) _seconds)
  (:lat
   (&optional __lat)
   (if __lat (setq _lat __lat)) _lat)
  (:lon
   (&optional __lon)
   (if __lon (setq _lon __lon)) _lon)
  (:height
   (&optional __height)
   (if __height (setq _height __height)) _height)
  (:north_velocity
   (&optional __north_velocity)
   (if __north_velocity (setq _north_velocity __north_velocity)) _north_velocity)
  (:east_velocity
   (&optional __east_velocity)
   (if __east_velocity (setq _east_velocity __east_velocity)) _east_velocity)
  (:up_velocity
   (&optional __up_velocity)
   (if __up_velocity (setq _up_velocity __up_velocity)) _up_velocity)
  (:roll
   (&optional __roll)
   (if __roll (setq _roll __roll)) _roll)
  (:pitch
   (&optional __pitch)
   (if __pitch (setq _pitch __pitch)) _pitch)
  (:azimuth
   (&optional __azimuth)
   (if __azimuth (setq _azimuth __azimuth)) _azimuth)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint32 _week_gnss
    4
    ;; float64 _seconds
    8
    ;; float64 _lat
    8
    ;; float64 _lon
    8
    ;; float64 _height
    8
    ;; float64 _north_velocity
    8
    ;; float64 _east_velocity
    8
    ;; float64 _up_velocity
    8
    ;; float64 _roll
    8
    ;; float64 _pitch
    8
    ;; float64 _azimuth
    8
    ;; string _status
    4 (length _status)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint32 _week_gnss
       (write-long _week_gnss s)
     ;; float64 _seconds
       (sys::poke _seconds (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _lat
       (sys::poke _lat (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _lon
       (sys::poke _lon (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _height
       (sys::poke _height (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _north_velocity
       (sys::poke _north_velocity (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _east_velocity
       (sys::poke _east_velocity (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _up_velocity
       (sys::poke _up_velocity (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _roll
       (sys::poke _roll (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _pitch
       (sys::poke _pitch (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _azimuth
       (sys::poke _azimuth (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; string _status
       (write-long (length _status) s) (princ _status s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint32 _week_gnss
     (setq _week_gnss (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64 _seconds
     (setq _seconds (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _lat
     (setq _lat (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _lon
     (setq _lon (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _height
     (setq _height (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _north_velocity
     (setq _north_velocity (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _east_velocity
     (setq _east_velocity (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _up_velocity
     (setq _up_velocity (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _roll
     (setq _roll (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _pitch
     (setq _pitch (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _azimuth
     (setq _azimuth (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; string _status
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _status (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get gps_msg::Gps_INSPVA :md5sum-) "6290ba6a27afe14d9f29923256059f31")
(setf (get gps_msg::Gps_INSPVA :datatype-) "gps_msg/Gps_INSPVA")
(setf (get gps_msg::Gps_INSPVA :definition-)
      "std_msgs/Header header

uint32 week_gnss     # GNSS周
float64 seconds      # 周秒
float64 lat          # 纬度(WGS84) degree  
float64 lon          # 经度(WGS84) degree
float64 height       # 椭球高(WGS84) m 
float64 north_velocity   # 北向速度（负值为南向）m/s
float64 east_velocity    # 东向速度（负值为西向）m/s
float64 up_velocity      # 天向速度m/s
float64 roll             # 横滚角（沿y轴右手螺旋）
float64 pitch            # 俯仰角（沿x轴右手螺旋）
float64 azimuth          # 航向角，从北向顺时针方向为正（绕z轴左手螺旋）
                        # 这是IMU陀螺仪组合滤波计算出的惯性方位角
string status   # 如下

# 0 INS_INACTIVE    IMU数据已存储,但未开始对准; INS 不解算
# 1 INS_ALIGNING    INS对准模式
        
# 2 INS_HIGH_VARIANCE   INS已进入导航模式,但航向角误差超限.对于大多 
#                       数IMU,默认阈值是 2 度。INS 解仍然有效,但是
#                       您应监视在 INSSTDEV 日志中的解的不确定性。当
#                       GNSS 用于帮助 INS 时,您可能会遇到这种状态

# 3 INS_SOLUTION_GOOD   进入导航模式且 INS 解正常

# 4 INS_SOLUTION_FREE   INS滤波器处于导航模式,GNSS 解被怀疑是错
#                       误的。这可能是由于多径或有限的卫星能见度。
#                       组合滤波器已拒绝 GNSS 位置,并等待其质量
#                       提高

#5 INS_ALIGNMENT_COMPLETE   INS滤波器处于导航模式,但还没有足够的车辆动
#                           态使其满足指标要求。

#6 DETERMINING_ORIENTATION  INS正在利用重力确定IMU轴向

#7 WAITING_INITIALPOS   INS滤波器确定IMU方向,并等待初始位置估计开
#                       始对准过程

#8 WAITING_AZIMUTH      INS滤波器具有方向、初始偏置、初始位置和有效
#                       横滚、俯仰估计。直到输入初始方位才开始进一步
#                       工作

#9 INITIALIZING_BIASES  INS滤波器估计在静态数据的前 10 秒内的初始偏置
#10 MOTION_DETECT       INS滤波器没有完全对准,但已经检测到运动


================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id

")



(provide :gps_msg/Gps_INSPVA "6290ba6a27afe14d9f29923256059f31")


