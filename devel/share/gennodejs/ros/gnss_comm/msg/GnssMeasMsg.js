// Auto-generated. Do not edit!

// (in-package gnss_comm.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let GnssObsMsg = require('./GnssObsMsg.js');

//-----------------------------------------------------------

class GnssMeasMsg {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.meas = null;
    }
    else {
      if (initObj.hasOwnProperty('meas')) {
        this.meas = initObj.meas
      }
      else {
        this.meas = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GnssMeasMsg
    // Serialize message field [meas]
    // Serialize the length for message field [meas]
    bufferOffset = _serializer.uint32(obj.meas.length, buffer, bufferOffset);
    obj.meas.forEach((val) => {
      bufferOffset = GnssObsMsg.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GnssMeasMsg
    let len;
    let data = new GnssMeasMsg(null);
    // Deserialize message field [meas]
    // Deserialize array length for message field [meas]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.meas = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.meas[i] = GnssObsMsg.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.meas.forEach((val) => {
      length += GnssObsMsg.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'gnss_comm/GnssMeasMsg';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0eafeb530a3e6637722c4e296734c119';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # This message contains one-epoch measurements from multiple satellites
    
    GnssObsMsg[] meas
    ================================================================================
    MSG: gnss_comm/GnssObsMsg
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
    const resolved = new GnssMeasMsg(null);
    if (msg.meas !== undefined) {
      resolved.meas = new Array(msg.meas.length);
      for (let i = 0; i < resolved.meas.length; ++i) {
        resolved.meas[i] = GnssObsMsg.Resolve(msg.meas[i]);
      }
    }
    else {
      resolved.meas = []
    }

    return resolved;
    }
};

module.exports = GnssMeasMsg;
