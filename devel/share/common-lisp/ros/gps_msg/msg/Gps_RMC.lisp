; Auto-generated. Do not edit!


(cl:in-package gps_msg-msg)


;//! \htmlinclude Gps_RMC.msg.html

(cl:defclass <Gps_RMC> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (utc
    :reader utc
    :initarg :utc
    :type cl:float
    :initform 0.0)
   (pos_status
    :reader pos_status
    :initarg :pos_status
    :type cl:string
    :initform "")
   (lat
    :reader lat
    :initarg :lat
    :type cl:float
    :initform 0.0)
   (lat_dir
    :reader lat_dir
    :initarg :lat_dir
    :type cl:string
    :initform "")
   (lon
    :reader lon
    :initarg :lon
    :type cl:float
    :initform 0.0)
   (lon_dir
    :reader lon_dir
    :initarg :lon_dir
    :type cl:string
    :initform "")
   (speed_Kn
    :reader speed_Kn
    :initarg :speed_Kn
    :type cl:float
    :initform 0.0)
   (track_true
    :reader track_true
    :initarg :track_true
    :type cl:float
    :initform 0.0)
   (date
    :reader date
    :initarg :date
    :type cl:integer
    :initform 0)
   (mag_var
    :reader mag_var
    :initarg :mag_var
    :type cl:float
    :initform 0.0)
   (var_dir
    :reader var_dir
    :initarg :var_dir
    :type cl:string
    :initform "")
   (mode_ind
    :reader mode_ind
    :initarg :mode_ind
    :type cl:string
    :initform ""))
)

(cl:defclass Gps_RMC (<Gps_RMC>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Gps_RMC>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Gps_RMC)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name gps_msg-msg:<Gps_RMC> is deprecated: use gps_msg-msg:Gps_RMC instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <Gps_RMC>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gps_msg-msg:header-val is deprecated.  Use gps_msg-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'utc-val :lambda-list '(m))
(cl:defmethod utc-val ((m <Gps_RMC>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gps_msg-msg:utc-val is deprecated.  Use gps_msg-msg:utc instead.")
  (utc m))

(cl:ensure-generic-function 'pos_status-val :lambda-list '(m))
(cl:defmethod pos_status-val ((m <Gps_RMC>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gps_msg-msg:pos_status-val is deprecated.  Use gps_msg-msg:pos_status instead.")
  (pos_status m))

(cl:ensure-generic-function 'lat-val :lambda-list '(m))
(cl:defmethod lat-val ((m <Gps_RMC>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gps_msg-msg:lat-val is deprecated.  Use gps_msg-msg:lat instead.")
  (lat m))

(cl:ensure-generic-function 'lat_dir-val :lambda-list '(m))
(cl:defmethod lat_dir-val ((m <Gps_RMC>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gps_msg-msg:lat_dir-val is deprecated.  Use gps_msg-msg:lat_dir instead.")
  (lat_dir m))

(cl:ensure-generic-function 'lon-val :lambda-list '(m))
(cl:defmethod lon-val ((m <Gps_RMC>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gps_msg-msg:lon-val is deprecated.  Use gps_msg-msg:lon instead.")
  (lon m))

(cl:ensure-generic-function 'lon_dir-val :lambda-list '(m))
(cl:defmethod lon_dir-val ((m <Gps_RMC>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gps_msg-msg:lon_dir-val is deprecated.  Use gps_msg-msg:lon_dir instead.")
  (lon_dir m))

(cl:ensure-generic-function 'speed_Kn-val :lambda-list '(m))
(cl:defmethod speed_Kn-val ((m <Gps_RMC>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gps_msg-msg:speed_Kn-val is deprecated.  Use gps_msg-msg:speed_Kn instead.")
  (speed_Kn m))

(cl:ensure-generic-function 'track_true-val :lambda-list '(m))
(cl:defmethod track_true-val ((m <Gps_RMC>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gps_msg-msg:track_true-val is deprecated.  Use gps_msg-msg:track_true instead.")
  (track_true m))

(cl:ensure-generic-function 'date-val :lambda-list '(m))
(cl:defmethod date-val ((m <Gps_RMC>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gps_msg-msg:date-val is deprecated.  Use gps_msg-msg:date instead.")
  (date m))

(cl:ensure-generic-function 'mag_var-val :lambda-list '(m))
(cl:defmethod mag_var-val ((m <Gps_RMC>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gps_msg-msg:mag_var-val is deprecated.  Use gps_msg-msg:mag_var instead.")
  (mag_var m))

(cl:ensure-generic-function 'var_dir-val :lambda-list '(m))
(cl:defmethod var_dir-val ((m <Gps_RMC>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gps_msg-msg:var_dir-val is deprecated.  Use gps_msg-msg:var_dir instead.")
  (var_dir m))

(cl:ensure-generic-function 'mode_ind-val :lambda-list '(m))
(cl:defmethod mode_ind-val ((m <Gps_RMC>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gps_msg-msg:mode_ind-val is deprecated.  Use gps_msg-msg:mode_ind instead.")
  (mode_ind m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Gps_RMC>) ostream)
  "Serializes a message object of type '<Gps_RMC>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'utc))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'pos_status))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'pos_status))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'lat))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'lat_dir))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'lat_dir))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'lon))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'lon_dir))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'lon_dir))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'speed_Kn))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'track_true))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'date)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'mag_var))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'var_dir))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'var_dir))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'mode_ind))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'mode_ind))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Gps_RMC>) istream)
  "Deserializes a message object of type '<Gps_RMC>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'utc) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'pos_status) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'pos_status) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'lat) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'lat_dir) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'lat_dir) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'lon) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'lon_dir) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'lon_dir) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'speed_Kn) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'track_true) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'date) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'mag_var) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'var_dir) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'var_dir) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'mode_ind) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'mode_ind) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Gps_RMC>)))
  "Returns string type for a message object of type '<Gps_RMC>"
  "gps_msg/Gps_RMC")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Gps_RMC)))
  "Returns string type for a message object of type 'Gps_RMC"
  "gps_msg/Gps_RMC")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Gps_RMC>)))
  "Returns md5sum for a message object of type '<Gps_RMC>"
  "4ed0fb8addd3545d2ae5e27efc17db4b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Gps_RMC)))
  "Returns md5sum for a message object of type 'Gps_RMC"
  "4ed0fb8addd3545d2ae5e27efc17db4b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Gps_RMC>)))
  "Returns full string definition for message of type '<Gps_RMC>"
  (cl:format cl:nil "std_msgs/Header header~%~%# GNRMC 数据包msg~%float64 utc         # hhmmss.ss~%string pos_status   # 位置状态 A=有效，V=无效~%float64 lat         # 纬度~%string  lat_dir     # 纬度方向~%float64 lon         # 经度~%string  lon_dir     # 经度方向~%float64 speed_Kn    # 地速 knot~%float32 track_true  # 真北航迹方向,deg~%int64  date         # 日期 ddmmyy ~%float32 mag_var     # 磁偏角 deg~%string var_dir      # 磁偏角方向 E/W~%string mode_ind     # 定位模式指示器~%~%# GNGSA 数据包msg   定位使用的卫星和DOP值（相对误差）~%# float32 pdop        # 位置精度因子~%# float32 hdop        # 平面精度因子~%# float32 vdop        # 高程精度因子~%~%~%~%~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Gps_RMC)))
  "Returns full string definition for message of type 'Gps_RMC"
  (cl:format cl:nil "std_msgs/Header header~%~%# GNRMC 数据包msg~%float64 utc         # hhmmss.ss~%string pos_status   # 位置状态 A=有效，V=无效~%float64 lat         # 纬度~%string  lat_dir     # 纬度方向~%float64 lon         # 经度~%string  lon_dir     # 经度方向~%float64 speed_Kn    # 地速 knot~%float32 track_true  # 真北航迹方向,deg~%int64  date         # 日期 ddmmyy ~%float32 mag_var     # 磁偏角 deg~%string var_dir      # 磁偏角方向 E/W~%string mode_ind     # 定位模式指示器~%~%# GNGSA 数据包msg   定位使用的卫星和DOP值（相对误差）~%# float32 pdop        # 位置精度因子~%# float32 hdop        # 平面精度因子~%# float32 vdop        # 高程精度因子~%~%~%~%~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Gps_RMC>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     8
     4 (cl:length (cl:slot-value msg 'pos_status))
     8
     4 (cl:length (cl:slot-value msg 'lat_dir))
     8
     4 (cl:length (cl:slot-value msg 'lon_dir))
     8
     4
     8
     4
     4 (cl:length (cl:slot-value msg 'var_dir))
     4 (cl:length (cl:slot-value msg 'mode_ind))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Gps_RMC>))
  "Converts a ROS message object to a list"
  (cl:list 'Gps_RMC
    (cl:cons ':header (header msg))
    (cl:cons ':utc (utc msg))
    (cl:cons ':pos_status (pos_status msg))
    (cl:cons ':lat (lat msg))
    (cl:cons ':lat_dir (lat_dir msg))
    (cl:cons ':lon (lon msg))
    (cl:cons ':lon_dir (lon_dir msg))
    (cl:cons ':speed_Kn (speed_Kn msg))
    (cl:cons ':track_true (track_true msg))
    (cl:cons ':date (date msg))
    (cl:cons ':mag_var (mag_var msg))
    (cl:cons ':var_dir (var_dir msg))
    (cl:cons ':mode_ind (mode_ind msg))
))
