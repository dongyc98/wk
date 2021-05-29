;; Auto-generated. Do not edit!


(when (boundp 'gps_msg::Gps_RMC)
  (if (not (find-package "GPS_MSG"))
    (make-package "GPS_MSG"))
  (shadow 'Gps_RMC (find-package "GPS_MSG")))
(unless (find-package "GPS_MSG::GPS_RMC")
  (make-package "GPS_MSG::GPS_RMC"))

(in-package "ROS")
;;//! \htmlinclude Gps_RMC.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass gps_msg::Gps_RMC
  :super ros::object
  :slots (_header _utc _pos_status _lat _lat_dir _lon _lon_dir _speed_Kn _track_true _date _mag_var _var_dir _mode_ind ))

(defmethod gps_msg::Gps_RMC
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:utc __utc) 0.0)
    ((:pos_status __pos_status) "")
    ((:lat __lat) 0.0)
    ((:lat_dir __lat_dir) "")
    ((:lon __lon) 0.0)
    ((:lon_dir __lon_dir) "")
    ((:speed_Kn __speed_Kn) 0.0)
    ((:track_true __track_true) 0.0)
    ((:date __date) 0)
    ((:mag_var __mag_var) 0.0)
    ((:var_dir __var_dir) "")
    ((:mode_ind __mode_ind) "")
    )
   (send-super :init)
   (setq _header __header)
   (setq _utc (float __utc))
   (setq _pos_status (string __pos_status))
   (setq _lat (float __lat))
   (setq _lat_dir (string __lat_dir))
   (setq _lon (float __lon))
   (setq _lon_dir (string __lon_dir))
   (setq _speed_Kn (float __speed_Kn))
   (setq _track_true (float __track_true))
   (setq _date (round __date))
   (setq _mag_var (float __mag_var))
   (setq _var_dir (string __var_dir))
   (setq _mode_ind (string __mode_ind))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:utc
   (&optional __utc)
   (if __utc (setq _utc __utc)) _utc)
  (:pos_status
   (&optional __pos_status)
   (if __pos_status (setq _pos_status __pos_status)) _pos_status)
  (:lat
   (&optional __lat)
   (if __lat (setq _lat __lat)) _lat)
  (:lat_dir
   (&optional __lat_dir)
   (if __lat_dir (setq _lat_dir __lat_dir)) _lat_dir)
  (:lon
   (&optional __lon)
   (if __lon (setq _lon __lon)) _lon)
  (:lon_dir
   (&optional __lon_dir)
   (if __lon_dir (setq _lon_dir __lon_dir)) _lon_dir)
  (:speed_Kn
   (&optional __speed_Kn)
   (if __speed_Kn (setq _speed_Kn __speed_Kn)) _speed_Kn)
  (:track_true
   (&optional __track_true)
   (if __track_true (setq _track_true __track_true)) _track_true)
  (:date
   (&optional __date)
   (if __date (setq _date __date)) _date)
  (:mag_var
   (&optional __mag_var)
   (if __mag_var (setq _mag_var __mag_var)) _mag_var)
  (:var_dir
   (&optional __var_dir)
   (if __var_dir (setq _var_dir __var_dir)) _var_dir)
  (:mode_ind
   (&optional __mode_ind)
   (if __mode_ind (setq _mode_ind __mode_ind)) _mode_ind)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float64 _utc
    8
    ;; string _pos_status
    4 (length _pos_status)
    ;; float64 _lat
    8
    ;; string _lat_dir
    4 (length _lat_dir)
    ;; float64 _lon
    8
    ;; string _lon_dir
    4 (length _lon_dir)
    ;; float64 _speed_Kn
    8
    ;; float32 _track_true
    4
    ;; int64 _date
    8
    ;; float32 _mag_var
    4
    ;; string _var_dir
    4 (length _var_dir)
    ;; string _mode_ind
    4 (length _mode_ind)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float64 _utc
       (sys::poke _utc (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; string _pos_status
       (write-long (length _pos_status) s) (princ _pos_status s)
     ;; float64 _lat
       (sys::poke _lat (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; string _lat_dir
       (write-long (length _lat_dir) s) (princ _lat_dir s)
     ;; float64 _lon
       (sys::poke _lon (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; string _lon_dir
       (write-long (length _lon_dir) s) (princ _lon_dir s)
     ;; float64 _speed_Kn
       (sys::poke _speed_Kn (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float32 _track_true
       (sys::poke _track_true (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; int64 _date
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _date (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _date) (= (length (_date . bv)) 2)) ;; bignum
              (write-long (ash (elt (_date . bv) 0) 0) s)
              (write-long (ash (elt (_date . bv) 1) -1) s))
             ((and (class _date) (= (length (_date . bv)) 1)) ;; big1
              (write-long (elt (_date . bv) 0) s)
              (write-long (if (>= _date 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _date s)(write-long (if (>= _date 0) 0 #xffffffff) s)))
     ;; float32 _mag_var
       (sys::poke _mag_var (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; string _var_dir
       (write-long (length _var_dir) s) (princ _var_dir s)
     ;; string _mode_ind
       (write-long (length _mode_ind) s) (princ _mode_ind s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float64 _utc
     (setq _utc (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; string _pos_status
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _pos_status (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float64 _lat
     (setq _lat (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; string _lat_dir
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _lat_dir (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float64 _lon
     (setq _lon (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; string _lon_dir
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _lon_dir (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float64 _speed_Kn
     (setq _speed_Kn (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float32 _track_true
     (setq _track_true (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; int64 _date
#+(or :alpha :irix6 :x86_64)
      (setf _date (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _date (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; float32 _mag_var
     (setq _mag_var (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; string _var_dir
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _var_dir (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _mode_ind
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _mode_ind (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get gps_msg::Gps_RMC :md5sum-) "4ed0fb8addd3545d2ae5e27efc17db4b")
(setf (get gps_msg::Gps_RMC :datatype-) "gps_msg/Gps_RMC")
(setf (get gps_msg::Gps_RMC :definition-)
      "std_msgs/Header header

# GNRMC 数据包msg
float64 utc         # hhmmss.ss
string pos_status   # 位置状态 A=有效，V=无效
float64 lat         # 纬度
string  lat_dir     # 纬度方向
float64 lon         # 经度
string  lon_dir     # 经度方向
float64 speed_Kn    # 地速 knot
float32 track_true  # 真北航迹方向,deg
int64  date         # 日期 ddmmyy 
float32 mag_var     # 磁偏角 deg
string var_dir      # 磁偏角方向 E/W
string mode_ind     # 定位模式指示器

# GNGSA 数据包msg   定位使用的卫星和DOP值（相对误差）
# float32 pdop        # 位置精度因子
# float32 hdop        # 平面精度因子
# float32 vdop        # 高程精度因子






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



(provide :gps_msg/Gps_RMC "4ed0fb8addd3545d2ae5e27efc17db4b")


