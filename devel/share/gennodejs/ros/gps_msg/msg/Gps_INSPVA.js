// Auto-generated. Do not edit!

// (in-package gps_msg.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class Gps_INSPVA {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.week_gnss = null;
      this.seconds = null;
      this.lat = null;
      this.lon = null;
      this.height = null;
      this.north_velocity = null;
      this.east_velocity = null;
      this.up_velocity = null;
      this.roll = null;
      this.pitch = null;
      this.azimuth = null;
      this.status = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('week_gnss')) {
        this.week_gnss = initObj.week_gnss
      }
      else {
        this.week_gnss = 0;
      }
      if (initObj.hasOwnProperty('seconds')) {
        this.seconds = initObj.seconds
      }
      else {
        this.seconds = 0.0;
      }
      if (initObj.hasOwnProperty('lat')) {
        this.lat = initObj.lat
      }
      else {
        this.lat = 0.0;
      }
      if (initObj.hasOwnProperty('lon')) {
        this.lon = initObj.lon
      }
      else {
        this.lon = 0.0;
      }
      if (initObj.hasOwnProperty('height')) {
        this.height = initObj.height
      }
      else {
        this.height = 0.0;
      }
      if (initObj.hasOwnProperty('north_velocity')) {
        this.north_velocity = initObj.north_velocity
      }
      else {
        this.north_velocity = 0.0;
      }
      if (initObj.hasOwnProperty('east_velocity')) {
        this.east_velocity = initObj.east_velocity
      }
      else {
        this.east_velocity = 0.0;
      }
      if (initObj.hasOwnProperty('up_velocity')) {
        this.up_velocity = initObj.up_velocity
      }
      else {
        this.up_velocity = 0.0;
      }
      if (initObj.hasOwnProperty('roll')) {
        this.roll = initObj.roll
      }
      else {
        this.roll = 0.0;
      }
      if (initObj.hasOwnProperty('pitch')) {
        this.pitch = initObj.pitch
      }
      else {
        this.pitch = 0.0;
      }
      if (initObj.hasOwnProperty('azimuth')) {
        this.azimuth = initObj.azimuth
      }
      else {
        this.azimuth = 0.0;
      }
      if (initObj.hasOwnProperty('status')) {
        this.status = initObj.status
      }
      else {
        this.status = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Gps_INSPVA
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [week_gnss]
    bufferOffset = _serializer.uint32(obj.week_gnss, buffer, bufferOffset);
    // Serialize message field [seconds]
    bufferOffset = _serializer.float64(obj.seconds, buffer, bufferOffset);
    // Serialize message field [lat]
    bufferOffset = _serializer.float64(obj.lat, buffer, bufferOffset);
    // Serialize message field [lon]
    bufferOffset = _serializer.float64(obj.lon, buffer, bufferOffset);
    // Serialize message field [height]
    bufferOffset = _serializer.float64(obj.height, buffer, bufferOffset);
    // Serialize message field [north_velocity]
    bufferOffset = _serializer.float64(obj.north_velocity, buffer, bufferOffset);
    // Serialize message field [east_velocity]
    bufferOffset = _serializer.float64(obj.east_velocity, buffer, bufferOffset);
    // Serialize message field [up_velocity]
    bufferOffset = _serializer.float64(obj.up_velocity, buffer, bufferOffset);
    // Serialize message field [roll]
    bufferOffset = _serializer.float64(obj.roll, buffer, bufferOffset);
    // Serialize message field [pitch]
    bufferOffset = _serializer.float64(obj.pitch, buffer, bufferOffset);
    // Serialize message field [azimuth]
    bufferOffset = _serializer.float64(obj.azimuth, buffer, bufferOffset);
    // Serialize message field [status]
    bufferOffset = _serializer.string(obj.status, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Gps_INSPVA
    let len;
    let data = new Gps_INSPVA(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [week_gnss]
    data.week_gnss = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [seconds]
    data.seconds = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [lat]
    data.lat = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [lon]
    data.lon = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [height]
    data.height = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [north_velocity]
    data.north_velocity = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [east_velocity]
    data.east_velocity = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [up_velocity]
    data.up_velocity = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [roll]
    data.roll = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [pitch]
    data.pitch = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [azimuth]
    data.azimuth = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [status]
    data.status = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += object.status.length;
    return length + 88;
  }

  static datatype() {
    // Returns string type for a message object
    return 'gps_msg/Gps_INSPVA';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6290ba6a27afe14d9f29923256059f31';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Gps_INSPVA(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.week_gnss !== undefined) {
      resolved.week_gnss = msg.week_gnss;
    }
    else {
      resolved.week_gnss = 0
    }

    if (msg.seconds !== undefined) {
      resolved.seconds = msg.seconds;
    }
    else {
      resolved.seconds = 0.0
    }

    if (msg.lat !== undefined) {
      resolved.lat = msg.lat;
    }
    else {
      resolved.lat = 0.0
    }

    if (msg.lon !== undefined) {
      resolved.lon = msg.lon;
    }
    else {
      resolved.lon = 0.0
    }

    if (msg.height !== undefined) {
      resolved.height = msg.height;
    }
    else {
      resolved.height = 0.0
    }

    if (msg.north_velocity !== undefined) {
      resolved.north_velocity = msg.north_velocity;
    }
    else {
      resolved.north_velocity = 0.0
    }

    if (msg.east_velocity !== undefined) {
      resolved.east_velocity = msg.east_velocity;
    }
    else {
      resolved.east_velocity = 0.0
    }

    if (msg.up_velocity !== undefined) {
      resolved.up_velocity = msg.up_velocity;
    }
    else {
      resolved.up_velocity = 0.0
    }

    if (msg.roll !== undefined) {
      resolved.roll = msg.roll;
    }
    else {
      resolved.roll = 0.0
    }

    if (msg.pitch !== undefined) {
      resolved.pitch = msg.pitch;
    }
    else {
      resolved.pitch = 0.0
    }

    if (msg.azimuth !== undefined) {
      resolved.azimuth = msg.azimuth;
    }
    else {
      resolved.azimuth = 0.0
    }

    if (msg.status !== undefined) {
      resolved.status = msg.status;
    }
    else {
      resolved.status = ''
    }

    return resolved;
    }
};

module.exports = Gps_INSPVA;
