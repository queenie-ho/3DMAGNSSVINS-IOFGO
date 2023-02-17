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

class GnssObsMsg {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.time = null;
      this.sat = null;
      this.freqs = null;
      this.CN0 = null;
      this.LLI = null;
      this.code = null;
      this.psr = null;
      this.psr_std = null;
      this.cp = null;
      this.cp_std = null;
      this.dopp = null;
      this.dopp_std = null;
      this.status = null;
    }
    else {
      if (initObj.hasOwnProperty('time')) {
        this.time = initObj.time
      }
      else {
        this.time = new GnssTimeMsg();
      }
      if (initObj.hasOwnProperty('sat')) {
        this.sat = initObj.sat
      }
      else {
        this.sat = 0;
      }
      if (initObj.hasOwnProperty('freqs')) {
        this.freqs = initObj.freqs
      }
      else {
        this.freqs = [];
      }
      if (initObj.hasOwnProperty('CN0')) {
        this.CN0 = initObj.CN0
      }
      else {
        this.CN0 = [];
      }
      if (initObj.hasOwnProperty('LLI')) {
        this.LLI = initObj.LLI
      }
      else {
        this.LLI = [];
      }
      if (initObj.hasOwnProperty('code')) {
        this.code = initObj.code
      }
      else {
        this.code = [];
      }
      if (initObj.hasOwnProperty('psr')) {
        this.psr = initObj.psr
      }
      else {
        this.psr = [];
      }
      if (initObj.hasOwnProperty('psr_std')) {
        this.psr_std = initObj.psr_std
      }
      else {
        this.psr_std = [];
      }
      if (initObj.hasOwnProperty('cp')) {
        this.cp = initObj.cp
      }
      else {
        this.cp = [];
      }
      if (initObj.hasOwnProperty('cp_std')) {
        this.cp_std = initObj.cp_std
      }
      else {
        this.cp_std = [];
      }
      if (initObj.hasOwnProperty('dopp')) {
        this.dopp = initObj.dopp
      }
      else {
        this.dopp = [];
      }
      if (initObj.hasOwnProperty('dopp_std')) {
        this.dopp_std = initObj.dopp_std
      }
      else {
        this.dopp_std = [];
      }
      if (initObj.hasOwnProperty('status')) {
        this.status = initObj.status
      }
      else {
        this.status = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GnssObsMsg
    // Serialize message field [time]
    bufferOffset = GnssTimeMsg.serialize(obj.time, buffer, bufferOffset);
    // Serialize message field [sat]
    bufferOffset = _serializer.uint32(obj.sat, buffer, bufferOffset);
    // Serialize message field [freqs]
    bufferOffset = _arraySerializer.float64(obj.freqs, buffer, bufferOffset, null);
    // Serialize message field [CN0]
    bufferOffset = _arraySerializer.float64(obj.CN0, buffer, bufferOffset, null);
    // Serialize message field [LLI]
    bufferOffset = _arraySerializer.uint8(obj.LLI, buffer, bufferOffset, null);
    // Serialize message field [code]
    bufferOffset = _arraySerializer.uint8(obj.code, buffer, bufferOffset, null);
    // Serialize message field [psr]
    bufferOffset = _arraySerializer.float64(obj.psr, buffer, bufferOffset, null);
    // Serialize message field [psr_std]
    bufferOffset = _arraySerializer.float64(obj.psr_std, buffer, bufferOffset, null);
    // Serialize message field [cp]
    bufferOffset = _arraySerializer.float64(obj.cp, buffer, bufferOffset, null);
    // Serialize message field [cp_std]
    bufferOffset = _arraySerializer.float64(obj.cp_std, buffer, bufferOffset, null);
    // Serialize message field [dopp]
    bufferOffset = _arraySerializer.float64(obj.dopp, buffer, bufferOffset, null);
    // Serialize message field [dopp_std]
    bufferOffset = _arraySerializer.float64(obj.dopp_std, buffer, bufferOffset, null);
    // Serialize message field [status]
    bufferOffset = _arraySerializer.uint8(obj.status, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GnssObsMsg
    let len;
    let data = new GnssObsMsg(null);
    // Deserialize message field [time]
    data.time = GnssTimeMsg.deserialize(buffer, bufferOffset);
    // Deserialize message field [sat]
    data.sat = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [freqs]
    data.freqs = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [CN0]
    data.CN0 = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [LLI]
    data.LLI = _arrayDeserializer.uint8(buffer, bufferOffset, null)
    // Deserialize message field [code]
    data.code = _arrayDeserializer.uint8(buffer, bufferOffset, null)
    // Deserialize message field [psr]
    data.psr = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [psr_std]
    data.psr_std = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [cp]
    data.cp = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [cp_std]
    data.cp_std = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [dopp]
    data.dopp = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [dopp_std]
    data.dopp_std = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [status]
    data.status = _arrayDeserializer.uint8(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 8 * object.freqs.length;
    length += 8 * object.CN0.length;
    length += object.LLI.length;
    length += object.code.length;
    length += 8 * object.psr.length;
    length += 8 * object.psr_std.length;
    length += 8 * object.cp.length;
    length += 8 * object.cp_std.length;
    length += 8 * object.dopp.length;
    length += 8 * object.dopp_std.length;
    length += object.status.length;
    return length + 60;
  }

  static datatype() {
    // Returns string type for a message object
    return 'gnss_comm/GnssObsMsg';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1989908f2a8a920a7a9e69d6804fb7e0';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # This message contains one-epoch measurements from one single satellite
    
    GnssTimeMsg time    # measurement time
    uint32 sat          # satellite ID (define by `sat_no` function in `gnss_utility.hpp`)
    float64[] freqs     # observed frequencies [Hz]
    float64[] CN0       # carrier-to-noise density ratio (signal strength) [dB-Hz]
    uint8[] LLI         # lost-lock indicator (1=lost)
    uint8[] code        # channel code
    float64[] psr       # pseudorange measurement [m]
    float64[] psr_std   # pseudorange standard deviation [m]
    float64[] cp        # carrier phase measurement [cycle]
    float64[] cp_std    # carrier phase standard deviation [cycle]
    float64[] dopp      # Doppler measurement [Hz]
    float64[] dopp_std  # Doppler standard deviation [Hz]
    # tracking status. bit_0:psr valid, bit_1:cp valid, 
    # bit_2:half cp valid, bit_3:half cp subtracted
    uint8[]   status    
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
    const resolved = new GnssObsMsg(null);
    if (msg.time !== undefined) {
      resolved.time = GnssTimeMsg.Resolve(msg.time)
    }
    else {
      resolved.time = new GnssTimeMsg()
    }

    if (msg.sat !== undefined) {
      resolved.sat = msg.sat;
    }
    else {
      resolved.sat = 0
    }

    if (msg.freqs !== undefined) {
      resolved.freqs = msg.freqs;
    }
    else {
      resolved.freqs = []
    }

    if (msg.CN0 !== undefined) {
      resolved.CN0 = msg.CN0;
    }
    else {
      resolved.CN0 = []
    }

    if (msg.LLI !== undefined) {
      resolved.LLI = msg.LLI;
    }
    else {
      resolved.LLI = []
    }

    if (msg.code !== undefined) {
      resolved.code = msg.code;
    }
    else {
      resolved.code = []
    }

    if (msg.psr !== undefined) {
      resolved.psr = msg.psr;
    }
    else {
      resolved.psr = []
    }

    if (msg.psr_std !== undefined) {
      resolved.psr_std = msg.psr_std;
    }
    else {
      resolved.psr_std = []
    }

    if (msg.cp !== undefined) {
      resolved.cp = msg.cp;
    }
    else {
      resolved.cp = []
    }

    if (msg.cp_std !== undefined) {
      resolved.cp_std = msg.cp_std;
    }
    else {
      resolved.cp_std = []
    }

    if (msg.dopp !== undefined) {
      resolved.dopp = msg.dopp;
    }
    else {
      resolved.dopp = []
    }

    if (msg.dopp_std !== undefined) {
      resolved.dopp_std = msg.dopp_std;
    }
    else {
      resolved.dopp_std = []
    }

    if (msg.status !== undefined) {
      resolved.status = msg.status;
    }
    else {
      resolved.status = []
    }

    return resolved;
    }
};

module.exports = GnssObsMsg;
