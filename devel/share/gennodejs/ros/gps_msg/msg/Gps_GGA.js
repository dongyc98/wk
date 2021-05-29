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

class Gps_GGA {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.pos_status = null;
      this.utc = null;
      this.lat = null;
      this.lat_dir = null;
      this.lon = null;
      this.lon_dir = null;
      this.qual = null;
      this.sats = null;
      this.hdop = null;
      this.alt = null;
      this.a_units = null;
      this.undulation = null;
      this.u_units = null;
      this.age = null;
      this.stn_ID = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('pos_status')) {
        this.pos_status = initObj.pos_status
      }
      else {
        this.pos_status = '';
      }
      if (initObj.hasOwnProperty('utc')) {
        this.utc = initObj.utc
      }
      else {
        this.utc = 0.0;
      }
      if (initObj.hasOwnProperty('lat')) {
        this.lat = initObj.lat
      }
      else {
        this.lat = 0.0;
      }
      if (initObj.hasOwnProperty('lat_dir')) {
        this.lat_dir = initObj.lat_dir
      }
      else {
        this.lat_dir = '';
      }
      if (initObj.hasOwnProperty('lon')) {
        this.lon = initObj.lon
      }
      else {
        this.lon = 0.0;
      }
      if (initObj.hasOwnProperty('lon_dir')) {
        this.lon_dir = initObj.lon_dir
      }
      else {
        this.lon_dir = '';
      }
      if (initObj.hasOwnProperty('qual')) {
        this.qual = initObj.qual
      }
      else {
        this.qual = 0;
      }
      if (initObj.hasOwnProperty('sats')) {
        this.sats = initObj.sats
      }
      else {
        this.sats = 0;
      }
      if (initObj.hasOwnProperty('hdop')) {
        this.hdop = initObj.hdop
      }
      else {
        this.hdop = 0.0;
      }
      if (initObj.hasOwnProperty('alt')) {
        this.alt = initObj.alt
      }
      else {
        this.alt = 0.0;
      }
      if (initObj.hasOwnProperty('a_units')) {
        this.a_units = initObj.a_units
      }
      else {
        this.a_units = '';
      }
      if (initObj.hasOwnProperty('undulation')) {
        this.undulation = initObj.undulation
      }
      else {
        this.undulation = 0.0;
      }
      if (initObj.hasOwnProperty('u_units')) {
        this.u_units = initObj.u_units
      }
      else {
        this.u_units = '';
      }
      if (initObj.hasOwnProperty('age')) {
        this.age = initObj.age
      }
      else {
        this.age = '';
      }
      if (initObj.hasOwnProperty('stn_ID')) {
        this.stn_ID = initObj.stn_ID
      }
      else {
        this.stn_ID = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Gps_GGA
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [pos_status]
    bufferOffset = _serializer.string(obj.pos_status, buffer, bufferOffset);
    // Serialize message field [utc]
    bufferOffset = _serializer.float64(obj.utc, buffer, bufferOffset);
    // Serialize message field [lat]
    bufferOffset = _serializer.float64(obj.lat, buffer, bufferOffset);
    // Serialize message field [lat_dir]
    bufferOffset = _serializer.string(obj.lat_dir, buffer, bufferOffset);
    // Serialize message field [lon]
    bufferOffset = _serializer.float64(obj.lon, buffer, bufferOffset);
    // Serialize message field [lon_dir]
    bufferOffset = _serializer.string(obj.lon_dir, buffer, bufferOffset);
    // Serialize message field [qual]
    bufferOffset = _serializer.uint8(obj.qual, buffer, bufferOffset);
    // Serialize message field [sats]
    bufferOffset = _serializer.uint8(obj.sats, buffer, bufferOffset);
    // Serialize message field [hdop]
    bufferOffset = _serializer.float32(obj.hdop, buffer, bufferOffset);
    // Serialize message field [alt]
    bufferOffset = _serializer.float64(obj.alt, buffer, bufferOffset);
    // Serialize message field [a_units]
    bufferOffset = _serializer.string(obj.a_units, buffer, bufferOffset);
    // Serialize message field [undulation]
    bufferOffset = _serializer.float32(obj.undulation, buffer, bufferOffset);
    // Serialize message field [u_units]
    bufferOffset = _serializer.string(obj.u_units, buffer, bufferOffset);
    // Serialize message field [age]
    bufferOffset = _serializer.string(obj.age, buffer, bufferOffset);
    // Serialize message field [stn_ID]
    bufferOffset = _serializer.int64(obj.stn_ID, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Gps_GGA
    let len;
    let data = new Gps_GGA(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [pos_status]
    data.pos_status = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [utc]
    data.utc = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [lat]
    data.lat = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [lat_dir]
    data.lat_dir = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [lon]
    data.lon = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [lon_dir]
    data.lon_dir = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [qual]
    data.qual = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [sats]
    data.sats = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [hdop]
    data.hdop = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [alt]
    data.alt = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [a_units]
    data.a_units = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [undulation]
    data.undulation = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [u_units]
    data.u_units = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [age]
    data.age = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [stn_ID]
    data.stn_ID = _deserializer.int64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += object.pos_status.length;
    length += object.lat_dir.length;
    length += object.lon_dir.length;
    length += object.a_units.length;
    length += object.u_units.length;
    length += object.age.length;
    return length + 74;
  }

  static datatype() {
    // Returns string type for a message object
    return 'gps_msg/Gps_GGA';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5e3d6806e31e5486a0581e347bc3ff13';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Gps_GGA(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.pos_status !== undefined) {
      resolved.pos_status = msg.pos_status;
    }
    else {
      resolved.pos_status = ''
    }

    if (msg.utc !== undefined) {
      resolved.utc = msg.utc;
    }
    else {
      resolved.utc = 0.0
    }

    if (msg.lat !== undefined) {
      resolved.lat = msg.lat;
    }
    else {
      resolved.lat = 0.0
    }

    if (msg.lat_dir !== undefined) {
      resolved.lat_dir = msg.lat_dir;
    }
    else {
      resolved.lat_dir = ''
    }

    if (msg.lon !== undefined) {
      resolved.lon = msg.lon;
    }
    else {
      resolved.lon = 0.0
    }

    if (msg.lon_dir !== undefined) {
      resolved.lon_dir = msg.lon_dir;
    }
    else {
      resolved.lon_dir = ''
    }

    if (msg.qual !== undefined) {
      resolved.qual = msg.qual;
    }
    else {
      resolved.qual = 0
    }

    if (msg.sats !== undefined) {
      resolved.sats = msg.sats;
    }
    else {
      resolved.sats = 0
    }

    if (msg.hdop !== undefined) {
      resolved.hdop = msg.hdop;
    }
    else {
      resolved.hdop = 0.0
    }

    if (msg.alt !== undefined) {
      resolved.alt = msg.alt;
    }
    else {
      resolved.alt = 0.0
    }

    if (msg.a_units !== undefined) {
      resolved.a_units = msg.a_units;
    }
    else {
      resolved.a_units = ''
    }

    if (msg.undulation !== undefined) {
      resolved.undulation = msg.undulation;
    }
    else {
      resolved.undulation = 0.0
    }

    if (msg.u_units !== undefined) {
      resolved.u_units = msg.u_units;
    }
    else {
      resolved.u_units = ''
    }

    if (msg.age !== undefined) {
      resolved.age = msg.age;
    }
    else {
      resolved.age = ''
    }

    if (msg.stn_ID !== undefined) {
      resolved.stn_ID = msg.stn_ID;
    }
    else {
      resolved.stn_ID = 0
    }

    return resolved;
    }
};

module.exports = Gps_GGA;
