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

class Gps_RMC {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.utc = null;
      this.pos_status = null;
      this.lat = null;
      this.lat_dir = null;
      this.lon = null;
      this.lon_dir = null;
      this.speed_Kn = null;
      this.track_true = null;
      this.date = null;
      this.mag_var = null;
      this.var_dir = null;
      this.mode_ind = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('utc')) {
        this.utc = initObj.utc
      }
      else {
        this.utc = 0.0;
      }
      if (initObj.hasOwnProperty('pos_status')) {
        this.pos_status = initObj.pos_status
      }
      else {
        this.pos_status = '';
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
      if (initObj.hasOwnProperty('speed_Kn')) {
        this.speed_Kn = initObj.speed_Kn
      }
      else {
        this.speed_Kn = 0.0;
      }
      if (initObj.hasOwnProperty('track_true')) {
        this.track_true = initObj.track_true
      }
      else {
        this.track_true = 0.0;
      }
      if (initObj.hasOwnProperty('date')) {
        this.date = initObj.date
      }
      else {
        this.date = 0;
      }
      if (initObj.hasOwnProperty('mag_var')) {
        this.mag_var = initObj.mag_var
      }
      else {
        this.mag_var = 0.0;
      }
      if (initObj.hasOwnProperty('var_dir')) {
        this.var_dir = initObj.var_dir
      }
      else {
        this.var_dir = '';
      }
      if (initObj.hasOwnProperty('mode_ind')) {
        this.mode_ind = initObj.mode_ind
      }
      else {
        this.mode_ind = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Gps_RMC
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [utc]
    bufferOffset = _serializer.float64(obj.utc, buffer, bufferOffset);
    // Serialize message field [pos_status]
    bufferOffset = _serializer.string(obj.pos_status, buffer, bufferOffset);
    // Serialize message field [lat]
    bufferOffset = _serializer.float64(obj.lat, buffer, bufferOffset);
    // Serialize message field [lat_dir]
    bufferOffset = _serializer.string(obj.lat_dir, buffer, bufferOffset);
    // Serialize message field [lon]
    bufferOffset = _serializer.float64(obj.lon, buffer, bufferOffset);
    // Serialize message field [lon_dir]
    bufferOffset = _serializer.string(obj.lon_dir, buffer, bufferOffset);
    // Serialize message field [speed_Kn]
    bufferOffset = _serializer.float64(obj.speed_Kn, buffer, bufferOffset);
    // Serialize message field [track_true]
    bufferOffset = _serializer.float32(obj.track_true, buffer, bufferOffset);
    // Serialize message field [date]
    bufferOffset = _serializer.int64(obj.date, buffer, bufferOffset);
    // Serialize message field [mag_var]
    bufferOffset = _serializer.float32(obj.mag_var, buffer, bufferOffset);
    // Serialize message field [var_dir]
    bufferOffset = _serializer.string(obj.var_dir, buffer, bufferOffset);
    // Serialize message field [mode_ind]
    bufferOffset = _serializer.string(obj.mode_ind, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Gps_RMC
    let len;
    let data = new Gps_RMC(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [utc]
    data.utc = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [pos_status]
    data.pos_status = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [lat]
    data.lat = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [lat_dir]
    data.lat_dir = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [lon]
    data.lon = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [lon_dir]
    data.lon_dir = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [speed_Kn]
    data.speed_Kn = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [track_true]
    data.track_true = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [date]
    data.date = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [mag_var]
    data.mag_var = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [var_dir]
    data.var_dir = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [mode_ind]
    data.mode_ind = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += object.pos_status.length;
    length += object.lat_dir.length;
    length += object.lon_dir.length;
    length += object.var_dir.length;
    length += object.mode_ind.length;
    return length + 68;
  }

  static datatype() {
    // Returns string type for a message object
    return 'gps_msg/Gps_RMC';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4ed0fb8addd3545d2ae5e27efc17db4b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Gps_RMC(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.utc !== undefined) {
      resolved.utc = msg.utc;
    }
    else {
      resolved.utc = 0.0
    }

    if (msg.pos_status !== undefined) {
      resolved.pos_status = msg.pos_status;
    }
    else {
      resolved.pos_status = ''
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

    if (msg.speed_Kn !== undefined) {
      resolved.speed_Kn = msg.speed_Kn;
    }
    else {
      resolved.speed_Kn = 0.0
    }

    if (msg.track_true !== undefined) {
      resolved.track_true = msg.track_true;
    }
    else {
      resolved.track_true = 0.0
    }

    if (msg.date !== undefined) {
      resolved.date = msg.date;
    }
    else {
      resolved.date = 0
    }

    if (msg.mag_var !== undefined) {
      resolved.mag_var = msg.mag_var;
    }
    else {
      resolved.mag_var = 0.0
    }

    if (msg.var_dir !== undefined) {
      resolved.var_dir = msg.var_dir;
    }
    else {
      resolved.var_dir = ''
    }

    if (msg.mode_ind !== undefined) {
      resolved.mode_ind = msg.mode_ind;
    }
    else {
      resolved.mode_ind = ''
    }

    return resolved;
    }
};

module.exports = Gps_RMC;
