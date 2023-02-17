// Auto-generated. Do not edit!

// (in-package gnss_comm.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class GnssTimeMsg {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.week = null;
      this.tow = null;
    }
    else {
      if (initObj.hasOwnProperty('week')) {
        this.week = initObj.week
      }
      else {
        this.week = 0;
      }
      if (initObj.hasOwnProperty('tow')) {
        this.tow = initObj.tow
      }
      else {
        this.tow = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GnssTimeMsg
    // Serialize message field [week]
    bufferOffset = _serializer.uint32(obj.week, buffer, bufferOffset);
    // Serialize message field [tow]
    bufferOffset = _serializer.float64(obj.tow, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GnssTimeMsg
    let len;
    let data = new GnssTimeMsg(null);
    // Deserialize message field [week]
    data.week = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [tow]
    data.tow = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'gnss_comm/GnssTimeMsg';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'bf90d33163be4f350369edc1830837b4';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new GnssTimeMsg(null);
    if (msg.week !== undefined) {
      resolved.week = msg.week;
    }
    else {
      resolved.week = 0
    }

    if (msg.tow !== undefined) {
      resolved.tow = msg.tow;
    }
    else {
      resolved.tow = 0.0
    }

    return resolved;
    }
};

module.exports = GnssTimeMsg;
