// Auto-generated. Do not edit!

// (in-package gnss_comm.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let GnssTimeMsg = require('./GnssTimeMsg.js');

//-----------------------------------------------------------

class GnssTimePulseInfoMsg {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.time = null;
      this.utc_based = null;
      this.time_sys = null;
    }
    else {
      if (initObj.hasOwnProperty('time')) {
        this.time = initObj.time
      }
      else {
        this.time = new GnssTimeMsg();
      }
      if (initObj.hasOwnProperty('utc_based')) {
        this.utc_based = initObj.utc_based
      }
      else {
        this.utc_based = false;
      }
      if (initObj.hasOwnProperty('time_sys')) {
        this.time_sys = initObj.time_sys
      }
      else {
        this.time_sys = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GnssTimePulseInfoMsg
    // Serialize message field [time]
    bufferOffset = GnssTimeMsg.serialize(obj.time, buffer, bufferOffset);
    // Serialize message field [utc_based]
    bufferOffset = _serializer.bool(obj.utc_based, buffer, bufferOffset);
    // Serialize message field [time_sys]
    bufferOffset = _serializer.uint32(obj.time_sys, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GnssTimePulseInfoMsg
    let len;
    let data = new GnssTimePulseInfoMsg(null);
    // Deserialize message field [time]
    data.time = GnssTimeMsg.deserialize(buffer, bufferOffset);
    // Deserialize message field [utc_based]
    data.utc_based = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [time_sys]
    data.time_sys = _deserializer.uint32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 17;
  }

  static datatype() {
    // Returns string type for a message object
    return 'gnss_comm/GnssTimePulseInfoMsg';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'de306035e295e3c4b1e0771a216b495a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # This message contains information of UBX-TIM-TP message. 
    # reference: [1]. UBX-18010854-R08, page 156
    
    GnssTimeMsg time    # GNSS time of the next time pulse
    bool utc_based      # if the time is UTC (1=UTC, 0=GNSS)
    uint32 time_sys     # GNSS time reference system, if the time base is GNSS (utc_base=0)
    ================================================================================
    MSG: gnss_comm/GnssTimeMsg
    # This message contains GNSS time expressed in the form of 
    # GNSS week number and time of week(in seconds)
    
    uint32 week
    float64 tow
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GnssTimePulseInfoMsg(null);
    if (msg.time !== undefined) {
      resolved.time = GnssTimeMsg.Resolve(msg.time)
    }
    else {
      resolved.time = new GnssTimeMsg()
    }

    if (msg.utc_based !== undefined) {
      resolved.utc_based = msg.utc_based;
    }
    else {
      resolved.utc_based = false
    }

    if (msg.time_sys !== undefined) {
      resolved.time_sys = msg.time_sys;
    }
    else {
      resolved.time_sys = 0
    }

    return resolved;
    }
};

module.exports = GnssTimePulseInfoMsg;
