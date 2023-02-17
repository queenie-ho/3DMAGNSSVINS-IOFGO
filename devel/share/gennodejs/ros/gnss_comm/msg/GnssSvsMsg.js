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

class GnssSvsMsg {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.sat = null;
      this.freqo = null;
      this.health = null;
      this.elev_degree = null;
      this.az_degree = null;
      this.sig_mask = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('sat')) {
        this.sat = initObj.sat
      }
      else {
        this.sat = [];
      }
      if (initObj.hasOwnProperty('freqo')) {
        this.freqo = initObj.freqo
      }
      else {
        this.freqo = [];
      }
      if (initObj.hasOwnProperty('health')) {
        this.health = initObj.health
      }
      else {
        this.health = [];
      }
      if (initObj.hasOwnProperty('elev_degree')) {
        this.elev_degree = initObj.elev_degree
      }
      else {
        this.elev_degree = [];
      }
      if (initObj.hasOwnProperty('az_degree')) {
        this.az_degree = initObj.az_degree
      }
      else {
        this.az_degree = [];
      }
      if (initObj.hasOwnProperty('sig_mask')) {
        this.sig_mask = initObj.sig_mask
      }
      else {
        this.sig_mask = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GnssSvsMsg
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [sat]
    bufferOffset = _arraySerializer.uint32(obj.sat, buffer, bufferOffset, null);
    // Serialize message field [freqo]
    bufferOffset = _arraySerializer.uint32(obj.freqo, buffer, bufferOffset, null);
    // Serialize message field [health]
    bufferOffset = _arraySerializer.bool(obj.health, buffer, bufferOffset, null);
    // Serialize message field [elev_degree]
    bufferOffset = _arraySerializer.float64(obj.elev_degree, buffer, bufferOffset, null);
    // Serialize message field [az_degree]
    bufferOffset = _arraySerializer.float64(obj.az_degree, buffer, bufferOffset, null);
    // Serialize message field [sig_mask]
    bufferOffset = _arraySerializer.uint32(obj.sig_mask, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GnssSvsMsg
    let len;
    let data = new GnssSvsMsg(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [sat]
    data.sat = _arrayDeserializer.uint32(buffer, bufferOffset, null)
    // Deserialize message field [freqo]
    data.freqo = _arrayDeserializer.uint32(buffer, bufferOffset, null)
    // Deserialize message field [health]
    data.health = _arrayDeserializer.bool(buffer, bufferOffset, null)
    // Deserialize message field [elev_degree]
    data.elev_degree = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [az_degree]
    data.az_degree = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [sig_mask]
    data.sig_mask = _arrayDeserializer.uint32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += 4 * object.sat.length;
    length += 4 * object.freqo.length;
    length += object.health.length;
    length += 8 * object.elev_degree.length;
    length += 8 * object.az_degree.length;
    length += 4 * object.sig_mask.length;
    return length + 24;
  }

  static datatype() {
    // Returns string type for a message object
    return 'gnss_comm/GnssSvsMsg';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '610ee24e5811902378e70f98580c022c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    uint32[]    sat
    uint32[]    freqo
    bool[]      health
    float64[]   elev_degree
    float64[]   az_degree
    uint32[]    sig_mask
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
    const resolved = new GnssSvsMsg(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.sat !== undefined) {
      resolved.sat = msg.sat;
    }
    else {
      resolved.sat = []
    }

    if (msg.freqo !== undefined) {
      resolved.freqo = msg.freqo;
    }
    else {
      resolved.freqo = []
    }

    if (msg.health !== undefined) {
      resolved.health = msg.health;
    }
    else {
      resolved.health = []
    }

    if (msg.elev_degree !== undefined) {
      resolved.elev_degree = msg.elev_degree;
    }
    else {
      resolved.elev_degree = []
    }

    if (msg.az_degree !== undefined) {
      resolved.az_degree = msg.az_degree;
    }
    else {
      resolved.az_degree = []
    }

    if (msg.sig_mask !== undefined) {
      resolved.sig_mask = msg.sig_mask;
    }
    else {
      resolved.sig_mask = []
    }

    return resolved;
    }
};

module.exports = GnssSvsMsg;
