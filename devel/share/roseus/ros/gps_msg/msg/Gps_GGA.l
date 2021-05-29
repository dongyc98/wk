;; Auto-generated. Do not edit!


(when (boundp 'gps_msg::Gps_GGA)
  (if (not (find-package "GPS_MSG"))
    (make-package "GPS_MSG"))
  (shadow 'Gps_GGA (find-package "GPS_MSG")))
(unless (find-package "GPS_MSG::GPS_GGA")
  (make-package "GPS_MSG::GPS_GGA"))

(in-package "ROS")
;;//! \htmlinclude Gps_GGA.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass gps_msg::Gps_GGA
  :super ros::object
  :slots (_header _pos_status _utc _lat _lat_dir _lon _lon_dir _qual _sats _hdop _alt _a_units _undulation _u_units _age _stn_ID ))

(defmethod gps_msg::Gps_GGA
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:pos_status __pos_status) "")
    ((:utc __utc) 0.0)
    ((:lat __lat) 0.0)
    ((:lat_dir __lat_dir) "")
    ((:lon __lon) 0.0)
    ((:lon_dir __lon_dir) "")
    ((:qual __qual) 0)
    ((:sats __sats) 0)
    ((:hdop __hdop) 0.0)
    ((:alt __alt) 0.0)
    ((:a_units __a_units) "")
    ((:undulation __undulation) 0.0)
    ((:u_units __u_units) "")
    ((:age __age) "")
    ((:stn_ID __stn_ID) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _pos_status (string __pos_status))
   (setq _utc (float __utc))
   (setq _lat (float __lat))
   (setq _lat_dir (string __lat_dir))
   (setq _lon (float __lon))
   (setq _lon_dir (string __lon_dir))
   (setq _qual (round __qual))
   (setq _sats (round __sats))
   (setq _hdop (float __hdop))
   (setq _alt (float __alt))
   (setq _a_units (string __a_units))
   (setq _undulation (float __undulation))
   (setq _u_units (string __u_units))
   (setq _age (string __age))
   (setq _stn_ID (round __stn_ID))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:pos_status
   (&optional __pos_status)
   (if __pos_status (setq _pos_status __pos_status)) _pos_status)
  (:utc
   (&optional __utc)
   (if __utc (setq _utc __utc)) _utc)
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
  (:qual
   (&optional __qual)
   (if __qual (setq _qual __qual)) _qual)
  (:sats
   (&optional __sats)
   (if __sats (setq _sats __sats)) _sats)
  (:hdop
   (&optional __hdop)
   (if __hdop (setq _hdop __hdop)) _hdop)
  (:alt
   (&optional __alt)
   (if __alt (setq _alt __alt)) _alt)
  (:a_units
   (&optional __a_units)
   (if __a_units (setq _a_units __a_units)) _a_units)
  (:undulation
   (&optional __undulation)
   (if __undulation (setq _undulation __undulation)) _undulation)
  (:u_units
   (&optional __u_units)
   (if __u_units (setq _u_units __u_units)) _u_units)
  (:age
   (&optional __age)
   (if __age (setq _age __age)) _age)
  (:stn_ID
   (&optional __stn_ID)
   (if __stn_ID (setq _stn_ID __stn_ID)) _stn_ID)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string _pos_status
    4 (length _pos_status)
    ;; float64 _utc
    8
    ;; float64 _lat
    8
    ;; string _lat_dir
    4 (length _lat_dir)
    ;; float64 _lon
    8
    ;; string _lon_dir
    4 (length _lon_dir)
    ;; uint8 _qual
    1
    ;; uint8 _sats
    1
    ;; float32 _hdop
    4
    ;; float64 _alt
    8
    ;; string _a_units
    4 (length _a_units)
    ;; float32 _undulation
    4
    ;; string _u_units
    4 (length _u_units)
    ;; string _age
    4 (length _age)
    ;; int64 _stn_ID
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; string _pos_status
       (write-long (length _pos_status) s) (princ _pos_status s)
     ;; float64 _utc
       (sys::poke _utc (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _lat
       (sys::poke _lat (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; string _lat_dir
       (write-long (length _lat_dir) s) (princ _lat_dir s)
     ;; float64 _lon
       (sys::poke _lon (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; string _lon_dir
       (write-long (length _lon_dir) s) (princ _lon_dir s)
     ;; uint8 _qual
       (write-byte _qual s)
     ;; uint8 _sats
       (write-byte _sats s)
     ;; float32 _hdop
       (sys::poke _hdop (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float64 _alt
       (sys::poke _alt (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; string _a_units
       (write-long (length _a_units) s) (princ _a_units s)
     ;; float32 _undulation
       (sys::poke _undulation (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; string _u_units
       (write-long (length _u_units) s) (princ _u_units s)
     ;; string _age
       (write-long (length _age) s) (princ _age s)
     ;; int64 _stn_ID
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _stn_ID (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _stn_ID) (= (length (_stn_ID . bv)) 2)) ;; bignum
              (write-long (ash (elt (_stn_ID . bv) 0) 0) s)
              (write-long (ash (elt (_stn_ID . bv) 1) -1) s))
             ((and (class _stn_ID) (= (length (_stn_ID . bv)) 1)) ;; big1
              (write-long (elt (_stn_ID . bv) 0) s)
              (write-long (if (>= _stn_ID 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _stn_ID s)(write-long (if (>= _stn_ID 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string _pos_status
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _pos_status (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float64 _utc
     (setq _utc (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _lat
     (setq _lat (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; string _lat_dir
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _lat_dir (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float64 _lon
     (setq _lon (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; string _lon_dir
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _lon_dir (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint8 _qual
     (setq _qual (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _sats
     (setq _sats (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float32 _hdop
     (setq _hdop (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float64 _alt
     (setq _alt (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; string _a_units
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _a_units (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float32 _undulation
     (setq _undulation (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; string _u_units
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _u_units (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _age
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _age (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int64 _stn_ID
#+(or :alpha :irix6 :x86_64)
      (setf _stn_ID (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _stn_ID (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;;
   self)
  )

(setf (get gps_msg::Gps_GGA :md5sum-) "5e3d6806e31e5486a0581e347bc3ff13")
(setf (get gps_msg::Gps_GGA :datatype-) "gps_msg/Gps_GGA")
(setf (get gps_msg::Gps_GGA :definition-)
      "std_msgs/Header header

string pos_status   # 位置状态 A=有效，V=无效  我自己添加
# GAGGA 数据包msg
float64 utc         # hhmmss.ss
float64 lat         # 经度
string  lat_dir
float64 lon         # 纬度
string  lon_dir
uint8   qual        # GPS质量指示符  0=定位不可用  1=单点定位  2=伪距差分或SBAS定位，4=RTK固定解，5=RTK浮点解，6=惯导定位
uint8   sats        # 使用中的卫星数，可能与所见数不一致
float32 hdop        # 水平精度因子
float64 alt         # 天线海拔高度，低于大地水准面为负值
string  a_units     # 天线高度单位
float32 undulation  # 大地水准面差距-大地水准面和WGS84椭球面之间的距离，大地水准面高于椭球面为正值，否则为负
string  u_units     # 大地水准面差距单位
string  age         # 差分数据龄期，秒为单位（没有差分数据时为空）
int64   stn_ID      # 差分基站ID，0000-4096 （没有差分数据时为空）
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



(provide :gps_msg/Gps_GGA "5e3d6806e31e5486a0581e347bc3ff13")


