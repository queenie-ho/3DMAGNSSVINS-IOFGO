// Auto-generated. Do not edit!

// (in-package gnss_comm.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class GnssBestXYZMsg {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.pos = null;
      this.pos_sigma = null;
      this.vel = null;
      this.vel_sigma = null;
      this.num_svs = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('pos')) {
        this.pos = initObj.pos
      }
      else {
        this.pos = [];
      }
      if (initObj.hasOwnProperty('pos_sigma')) {
        this.pos_sigma = initObj.pos_sigma
      }
      else {
        this.pos_sigma = [];
      }
      if (initObj.hasOwnProperty('vel')) {
        this.vel = initObj.vel
      }
      else {
        this.vel = [];
      }
      if (initObj.hasOwnProperty('vel_sigma')) {
        this.vel_sigma = initObj.vel_sigma
      }
      else {
        this.vel_sigma = [];
      }
      if (initObj.hasOwnProperty('num_svs')) {
        this.num_svs = initObj.num_svs
      }
      else {
        this.num_svs = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GnssBestXYZMsg
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [pos]
    bufferOffset = _arraySerializer.float64(obj.pos, buffer, bufferOffset, null);
    // Serialize message field [pos_sigma]
    bufferOffset = _arraySerializer.float64(obj.pos_sigma, buffer, bufferOffset, null);
    // Serialize message field [vel]
    bufferOffset = _arraySerializer.float64(obj.vel, buffer, bufferOffset, null);
    // Serialize message field [vel_sigma]
    bufferOffset = _arraySerializer.float64(obj.vel_sigma, buffer, bufferOffset, null);
    // Serialize message field [num_svs]
    bufferOffset = _serializer.uint32(obj.num_svs, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GnssBestXYZMsg
    let len;
    let data = new GnssBestXYZMsg(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [pos]
    data.pos = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [pos_sigma]
    data.pos_sigma = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [vel]
    data.vel = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [vel_sigma]
    data.vel_sigma = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [num_svs]
    data.num_svs = _deserializer.uint32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += 8 * object.pos.length;
    length += 8 * object.pos_sigma.length;
    length += 8 * object.vel.length;
    length += 8 * object.vel_sigma.length;
    return length + 20;
  }

  static datatype() {
    // Returns string type for a message object
    return 'gnss_comm/GnssBestXYZMsg';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8760f15dc1e5a1752bf3a62384ef184e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    float64[] pos
    float64[] pos_sigma
    float64[] vel
    float64[] vel_sigma
    uint32    num_svs
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
    string frame_id
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GnssBestXYZMsg(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.pos !== undefined) {
      resolved.pos = msg.pos;
    }
    else {
      resolved.pos = []
    }

    if (msg.pos_sigma !== undefined) {
      resolved.pos_sigma = msg.pos_sigma;
    }
    else {
      resolved.pos_sigma = []
    }

    if (msg.vel !== undefined) {
      resolved.vel = msg.vel;
    }
    else {
      resolved.vel = []
    }

    if (msg.vel_sigma !== undefined) {
      resolved.vel_sigma = msg.vel_sigma;
    }
    else {
      resolved.vel_sigma = []
    }

    if (msg.num_svs !== undefined) {
      resolved.num_svs = msg.num_svs;
    }
    else {
      resolved.num_svs = 0
    }

    return resolved;
    }
};

module.exports = GnssBestXYZMsg;
