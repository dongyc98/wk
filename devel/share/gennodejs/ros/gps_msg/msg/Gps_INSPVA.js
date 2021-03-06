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
    
    uint32 week_gnss     # GNSS???
    float64 seconds      # ??????
    float64 lat          # ??????(WGS84) degree  
    float64 lon          # ??????(WGS84) degree
    float64 height       # ?????????(WGS84) m 
    float64 north_velocity   # ?????????????????????????????????m/s
    float64 east_velocity    # ?????????????????????????????????m/s
    float64 up_velocity      # ????????????m/s
    float64 roll             # ???????????????y??????????????????
    float64 pitch            # ???????????????x??????????????????
    float64 azimuth          # ????????????????????????????????????????????????z??????????????????
                            # ??????IMU????????????????????????????????????????????????
    string status   # ??????
    
    # 0 INS_INACTIVE    IMU???????????????,??????????????????; INS ?????????
    # 1 INS_ALIGNING    INS????????????
            
    # 2 INS_HIGH_VARIANCE   INS?????????????????????,????????????????????????.???????????? 
    #                       ???IMU,??????????????? 2 ??????INS ???????????????,??????
    #                       ??????????????? INSSTDEV ????????????????????????????????????
    #                       GNSS ???????????? INS ???,??????????????????????????????
    
    # 3 INS_SOLUTION_GOOD   ????????????????????? INS ?????????
    
    # 4 INS_SOLUTION_FREE   INS???????????????????????????,GNSS ??????????????????
    #                       ???????????????????????????????????????????????????????????????
    #                       ???????????????????????? GNSS ??????,??????????????????
    #                       ??????
    
    #5 INS_ALIGNMENT_COMPLETE   INS???????????????????????????,??????????????????????????????
    #                           ??????????????????????????????
    
    #6 DETERMINING_ORIENTATION  INS????????????????????????IMU??????
    
    #7 WAITING_INITIALPOS   INS???????????????IMU??????,??????????????????????????????
    #                       ???????????????
    
    #8 WAITING_AZIMUTH      INS????????????????????????????????????????????????????????????
    #                       ??????????????????????????????????????????????????????????????????
    #                       ??????
    
    #9 INITIALIZING_BIASES  INS???????????????????????????????????? 10 ?????????????????????
    #10 MOTION_DETECT       INS???????????????????????????,????????????????????????
    
    
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
