; Auto-generated. Do not edit!


(cl:in-package gps_msg-msg)


;//! \htmlinclude Gps_GGA.msg.html

(cl:defclass <Gps_GGA> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (pos_status
    :reader pos_status
    :initarg :pos_status
    :type cl:string
    :initform "")
   (utc
    :reader utc
    :initarg :utc
    :type cl:float
    :initform 0.0)
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
   (qual
    :reader qual
    :initarg :qual
    :type cl:fixnum
    :initform 0)
   (sats
    :reader sats
    :initarg :sats
    :type cl:fixnum
    :initform 0)
   (hdop
    :reader hdop
    :initarg :hdop
    :type cl:float
    :initform 0.0)
   (alt
    :reader alt
    :initarg :alt
    :type cl:float
    :initform 0.0)
   (a_units
    :reader a_units
    :initarg :a_units
    :type cl:string
    :initform "")
   (undulation
    :reader undulation
    :initarg :undulation
    :type cl:float
    :initform 0.0)
   (u_units
    :reader u_units
    :initarg :u_units
    :type cl:string
    :initform "")
   (age
    :reader age
    :initarg :age
    :type cl:string
    :initform "")
   (stn_ID
    :reader stn_ID
    :initarg :stn_ID
    :type cl:integer
    :initform 0))
)

(cl:defclass Gps_GGA (<Gps_GGA>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Gps_GGA>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Gps_GGA)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name gps_msg-msg:<Gps_GGA> is deprecated: use gps_msg-msg:Gps_GGA instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <Gps_GGA>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gps_msg-msg:header-val is deprecated.  Use gps_msg-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'pos_status-val :lambda-list '(m))
(cl:defmethod pos_status-val ((m <Gps_GGA>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gps_msg-msg:pos_status-val is deprecated.  Use gps_msg-msg:pos_status instead.")
  (pos_status m))

(cl:ensure-generic-function 'utc-val :lambda-list '(m))
(cl:defmethod utc-val ((m <Gps_GGA>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gps_msg-msg:utc-val is deprecated.  Use gps_msg-msg:utc instead.")
  (utc m))

(cl:ensure-generic-function 'lat-val :lambda-list '(m))
(cl:defmethod lat-val ((m <Gps_GGA>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gps_msg-msg:lat-val is deprecated.  Use gps_msg-msg:lat instead.")
  (lat m))

(cl:ensure-generic-function 'lat_dir-val :lambda-list '(m))
(cl:defmethod lat_dir-val ((m <Gps_GGA>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gps_msg-msg:lat_dir-val is deprecated.  Use gps_msg-msg:lat_dir instead.")
  (lat_dir m))

(cl:ensure-generic-function 'lon-val :lambda-list '(m))
(cl:defmethod lon-val ((m <Gps_GGA>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gps_msg-msg:lon-val is deprecated.  Use gps_msg-msg:lon instead.")
  (lon m))

(cl:ensure-generic-function 'lon_dir-val :lambda-list '(m))
(cl:defmethod lon_dir-val ((m <Gps_GGA>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gps_msg-msg:lon_dir-val is deprecated.  Use gps_msg-msg:lon_dir instead.")
  (lon_dir m))

(cl:ensure-generic-function 'qual-val :lambda-list '(m))
(cl:defmethod qual-val ((m <Gps_GGA>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gps_msg-msg:qual-val is deprecated.  Use gps_msg-msg:qual instead.")
  (qual m))

(cl:ensure-generic-function 'sats-val :lambda-list '(m))
(cl:defmethod sats-val ((m <Gps_GGA>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gps_msg-msg:sats-val is deprecated.  Use gps_msg-msg:sats instead.")
  (sats m))

(cl:ensure-generic-function 'hdop-val :lambda-list '(m))
(cl:defmethod hdop-val ((m <Gps_GGA>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gps_msg-msg:hdop-val is deprecated.  Use gps_msg-msg:hdop instead.")
  (hdop m))

(cl:ensure-generic-function 'alt-val :lambda-list '(m))
(cl:defmethod alt-val ((m <Gps_GGA>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gps_msg-msg:alt-val is deprecated.  Use gps_msg-msg:alt instead.")
  (alt m))

(cl:ensure-generic-function 'a_units-val :lambda-list '(m))
(cl:defmethod a_units-val ((m <Gps_GGA>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gps_msg-msg:a_units-val is deprecated.  Use gps_msg-msg:a_units instead.")
  (a_units m))

(cl:ensure-generic-function 'undulation-val :lambda-list '(m))
(cl:defmethod undulation-val ((m <Gps_GGA>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gps_msg-msg:undulation-val is deprecated.  Use gps_msg-msg:undulation instead.")
  (undulation m))

(cl:ensure-generic-function 'u_units-val :lambda-list '(m))
(cl:defmethod u_units-val ((m <Gps_GGA>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gps_msg-msg:u_units-val is deprecated.  Use gps_msg-msg:u_units instead.")
  (u_units m))

(cl:ensure-generic-function 'age-val :lambda-list '(m))
(cl:defmethod age-val ((m <Gps_GGA>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gps_msg-msg:age-val is deprecated.  Use gps_msg-msg:age instead.")
  (age m))

(cl:ensure-generic-function 'stn_ID-val :lambda-list '(m))
(cl:defmethod stn_ID-val ((m <Gps_GGA>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gps_msg-msg:stn_ID-val is deprecated.  Use gps_msg-msg:stn_ID instead.")
  (stn_ID m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Gps_GGA>) ostream)
  "Serializes a message object of type '<Gps_GGA>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'pos_status))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'pos_status))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'utc))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
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
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'qual)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'sats)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'hdop))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'alt))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'a_units))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'a_units))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'undulation))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'u_units))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'u_units))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'age))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'age))
  (cl:let* ((signed (cl:slot-value msg 'stn_ID)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Gps_GGA>) istream)
  "Deserializes a message object of type '<Gps_GGA>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
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
    (cl:setf (cl:slot-value msg 'utc) (roslisp-utils:decode-double-float-bits bits)))
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
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'qual)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'sats)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'hdop) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'alt) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'a_units) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'a_units) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'undulation) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'u_units) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'u_units) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'age) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'age) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'stn_ID) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Gps_GGA>)))
  "Returns string type for a message object of type '<Gps_GGA>"
  "gps_msg/Gps_GGA")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Gps_GGA)))
  "Returns string type for a message object of type 'Gps_GGA"
  "gps_msg/Gps_GGA")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Gps_GGA>)))
  "Returns md5sum for a message object of type '<Gps_GGA>"
  "5e3d6806e31e5486a0581e347bc3ff13")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Gps_GGA)))
  "Returns md5sum for a message object of type 'Gps_GGA"
  "5e3d6806e31e5486a0581e347bc3ff13")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Gps_GGA>)))
  "Returns full string definition for message of type '<Gps_GGA>"
  (cl:format cl:nil "std_msgs/Header header~%~%string pos_status   # 位置状态 A=有效，V=无效  我自己添加~%# GAGGA 数据包msg~%float64 utc         # hhmmss.ss~%float64 lat         # 经度~%string  lat_dir~%float64 lon         # 纬度~%string  lon_dir~%uint8   qual        # GPS质量指示符  0=定位不可用  1=单点定位  2=伪距差分或SBAS定位，4=RTK固定解，5=RTK浮点解，6=惯导定位~%uint8   sats        # 使用中的卫星数，可能与所见数不一致~%float32 hdop        # 水平精度因子~%float64 alt         # 天线海拔高度，低于大地水准面为负值~%string  a_units     # 天线高度单位~%float32 undulation  # 大地水准面差距-大地水准面和WGS84椭球面之间的距离，大地水准面高于椭球面为正值，否则为负~%string  u_units     # 大地水准面差距单位~%string  age         # 差分数据龄期，秒为单位（没有差分数据时为空）~%int64   stn_ID      # 差分基站ID，0000-4096 （没有差分数据时为空）~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Gps_GGA)))
  "Returns full string definition for message of type 'Gps_GGA"
  (cl:format cl:nil "std_msgs/Header header~%~%string pos_status   # 位置状态 A=有效，V=无效  我自己添加~%# GAGGA 数据包msg~%float64 utc         # hhmmss.ss~%float64 lat         # 经度~%string  lat_dir~%float64 lon         # 纬度~%string  lon_dir~%uint8   qual        # GPS质量指示符  0=定位不可用  1=单点定位  2=伪距差分或SBAS定位，4=RTK固定解，5=RTK浮点解，6=惯导定位~%uint8   sats        # 使用中的卫星数，可能与所见数不一致~%float32 hdop        # 水平精度因子~%float64 alt         # 天线海拔高度，低于大地水准面为负值~%string  a_units     # 天线高度单位~%float32 undulation  # 大地水准面差距-大地水准面和WGS84椭球面之间的距离，大地水准面高于椭球面为正值，否则为负~%string  u_units     # 大地水准面差距单位~%string  age         # 差分数据龄期，秒为单位（没有差分数据时为空）~%int64   stn_ID      # 差分基站ID，0000-4096 （没有差分数据时为空）~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Gps_GGA>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:length (cl:slot-value msg 'pos_status))
     8
     8
     4 (cl:length (cl:slot-value msg 'lat_dir))
     8
     4 (cl:length (cl:slot-value msg 'lon_dir))
     1
     1
     4
     8
     4 (cl:length (cl:slot-value msg 'a_units))
     4
     4 (cl:length (cl:slot-value msg 'u_units))
     4 (cl:length (cl:slot-value msg 'age))
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Gps_GGA>))
  "Converts a ROS message object to a list"
  (cl:list 'Gps_GGA
    (cl:cons ':header (header msg))
    (cl:cons ':pos_status (pos_status msg))
    (cl:cons ':utc (utc msg))
    (cl:cons ':lat (lat msg))
    (cl:cons ':lat_dir (lat_dir msg))
    (cl:cons ':lon (lon msg))
    (cl:cons ':lon_dir (lon_dir msg))
    (cl:cons ':qual (qual msg))
    (cl:cons ':sats (sats msg))
    (cl:cons ':hdop (hdop msg))
    (cl:cons ':alt (alt msg))
    (cl:cons ':a_units (a_units msg))
    (cl:cons ':undulation (undulation msg))
    (cl:cons ':u_units (u_units msg))
    (cl:cons ':age (age msg))
    (cl:cons ':stn_ID (stn_ID msg))
))
