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

class GnssPVTSolnMsg {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.time = null;
      this.fix_type = null;
      this.valid_fix = null;
      this.diff_soln = null;
      this.carr_soln = null;
      this.num_sv = null;
      this.latitude = null;
      this.longitude = null;
      this.altitude = null;
      this.height_msl = null;
      this.h_acc = null;
      this.v_acc = null;
      this.p_dop = null;
      this.vel_n = null;
      this.vel_e = null;
      this.vel_d = null;
      this.vel_acc = null;
    }
    else {
      if (initObj.hasOwnProperty('time')) {
        this.time = initObj.time
      }
      else {
        this.time = new GnssTimeMsg();
      }
      if (initObj.hasOwnProperty('fix_type')) {
        this.fix_type = initObj.fix_type
      }
      else {
        this.fix_type = 0;
      }
      if (initObj.hasOwnProperty('valid_fix')) {
        this.valid_fix = initObj.valid_fix
      }
      else {
        this.valid_fix = false;
      }
      if (initObj.hasOwnProperty('diff_soln')) {
        this.diff_soln = initObj.diff_soln
      }
      else {
        this.diff_soln = false;
      }
      if (initObj.hasOwnProperty('carr_soln')) {
        this.carr_soln = initObj.carr_soln
      }
      else {
        this.carr_soln = 0;
      }
      if (initObj.hasOwnProperty('num_sv')) {
        this.num_sv = initObj.num_sv
      }
      else {
        this.num_sv = 0;
      }
      if (initObj.hasOwnProperty('latitude')) {
        this.latitude = initObj.latitude
      }
      else {
        this.latitude = 0.0;
      }
      if (initObj.hasOwnProperty('longitude')) {
        this.longitude = initObj.longitude
      }
      else {
        this.longitude = 0.0;
      }
      if (initObj.hasOwnProperty('altitude')) {
        this.altitude = initObj.altitude
      }
      else {
        this.altitude = 0.0;
      }
      if (initObj.hasOwnProperty('height_msl')) {
        this.height_msl = initObj.height_msl
      }
      else {
        this.height_msl = 0.0;
      }
      if (initObj.hasOwnProperty('h_acc')) {
        this.h_acc = initObj.h_acc
      }
      else {
        this.h_acc = 0.0;
      }
      if (initObj.hasOwnProperty('v_acc')) {
        this.v_acc = initObj.v_acc
      }
      else {
        this.v_acc = 0.0;
      }
      if (initObj.hasOwnProperty('p_dop')) {
        this.p_dop = initObj.p_dop
      }
      else {
        this.p_dop = 0.0;
      }
      if (initObj.hasOwnProperty('vel_n')) {
        this.vel_n = initObj.vel_n
      }
      else {
        this.vel_n = 0.0;
      }
      if (initObj.hasOwnProperty('vel_e')) {
        this.vel_e = initObj.vel_e
      }
      else {
        this.vel_e = 0.0;
      }
      if (initObj.hasOwnProperty('vel_d')) {
        this.vel_d = initObj.vel_d
      }
      else {
        this.vel_d = 0.0;
      }
      if (initObj.hasOwnProperty('vel_acc')) {
        this.vel_acc = initObj.vel_acc
      }
      else {
        this.vel_acc = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GnssPVTSolnMsg
    // Serialize message field [time]
    bufferOffset = GnssTimeMsg.serialize(obj.time, buffer, bufferOffset);
    // Serialize message field [fix_type]
    bufferOffset = _serializer.uint8(obj.fix_type, buffer, bufferOffset);
    // Serialize message field [valid_fix]
    bufferOffset = _serializer.bool(obj.valid_fix, buffer, bufferOffset);
    // Serialize message field [diff_soln]
    bufferOffset = _serializer.bool(obj.diff_soln, buffer, bufferOffset);
    // Serialize message field [carr_soln]
    bufferOffset = _serializer.uint8(obj.carr_soln, buffer, bufferOffset);
    // Serialize message field [num_sv]
    bufferOffset = _serializer.uint8(obj.num_sv, buffer, bufferOffset);
    // Serialize message field [latitude]
    bufferOffset = _serializer.float64(obj.latitude, buffer, bufferOffset);
    // Serialize message field [longitude]
    bufferOffset = _serializer.float64(obj.longitude, buffer, bufferOffset);
    // Serialize message field [altitude]
    bufferOffset = _serializer.float64(obj.altitude, buffer, bufferOffset);
    // Serialize message field [height_msl]
    bufferOffset = _serializer.float64(obj.height_msl, buffer, bufferOffset);
    // Serialize message field [h_acc]
    bufferOffset = _serializer.float64(obj.h_acc, buffer, bufferOffset);
    // Serialize message field [v_acc]
    bufferOffset = _serializer.float64(obj.v_acc, buffer, bufferOffset);
    // Serialize message field [p_dop]
    bufferOffset = _serializer.float64(obj.p_dop, buffer, bufferOffset);
    // Serialize message field [vel_n]
    bufferOffset = _serializer.float64(obj.vel_n, buffer, bufferOffset);
    // Serialize message field [vel_e]
    bufferOffset = _serializer.float64(obj.vel_e, buffer, bufferOffset);
    // Serialize message field [vel_d]
    bufferOffset = _serializer.float64(obj.vel_d, buffer, bufferOffset);
    // Serialize message field [vel_acc]
    bufferOffset = _serializer.float64(obj.vel_acc, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GnssPVTSolnMsg
    let len;
    let data = new GnssPVTSolnMsg(null);
    // Deserialize message field [time]
    data.time = GnssTimeMsg.deserialize(buffer, bufferOffset);
    // Deserialize message field [fix_type]
    data.fix_type = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [valid_fix]
    data.valid_fix = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [diff_soln]
    data.diff_soln = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [carr_soln]
    data.carr_soln = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [num_sv]
    data.num_sv = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [latitude]
    data.latitude = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [longitude]
    data.longitude = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [altitude]
    data.altitude = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [height_msl]
    data.height_msl = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [h_acc]
    data.h_acc = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [v_acc]
    data.v_acc = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [p_dop]
    data.p_dop = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [vel_n]
    data.vel_n = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [vel_e]
    data.vel_e = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [vel_d]
    data.vel_d = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [vel_acc]
    data.vel_acc = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 105;
  }

  static datatype() {
    // Returns string type for a message object
    return 'gnss_comm/GnssPVTSolnMsg';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd18171357d7a159f76d4d7c0b12fb631';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # This message contains information of UBX-NAV-PVT message. 
    # reference: [1]. UBX-18010854-R08, page 132
    
    GnssTimeMsg time    # GNSS time of the navigation epoch
    # GNSS fix type (0=no fix, 1=dead reckoning only, 2=2D-fix, 3=3D-fix, 
    # 4=GNSS+dead reckoning combined, 5=time only fix)
    uint8   fix_type
    bool    valid_fix   # if fix valid (1=valid fix)
    bool    diff_soln   # if differential correction were applied (1=applied)
    uint8   carr_soln   # carrier phase range solution status (0=no carrier phase, 1=float, 2=fix)
    uint8   num_sv      # number of satellites used in the solution
    float64 latitude    # latitude [degree]
    float64 longitude   # longitude [degree]
    float64 altitude    # height above ellipsoid [m]
    float64 height_msl  # height above mean sea level [m]
    float64 h_acc       # horizontal accuracy estimate [m]
    float64 v_acc       # vertical accuracy estimate [m]
    float64 p_dop       # Position DOP
    float64 vel_n       # NED north velocity [m/s]
    float64 vel_e       # NED east velocity [m/s]
    float64 vel_d       # NED down velocity [m/s]
    float64 vel_acc     # speed accuracy estimate [m/s]
    
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
    const resolved = new GnssPVTSolnMsg(null);
    if (msg.time !== undefined) {
      resolved.time = GnssTimeMsg.Resolve(msg.time)
    }
    else {
      resolved.time = new GnssTimeMsg()
    }

    if (msg.fix_type !== undefined) {
      resolved.fix_type = msg.fix_type;
    }
    else {
      resolved.fix_type = 0
    }

    if (msg.valid_fix !== undefined) {
      resolved.valid_fix = msg.valid_fix;
    }
    else {
      resolved.valid_fix = false
    }

    if (msg.diff_soln !== undefined) {
      resolved.diff_soln = msg.diff_soln;
    }
    else {
      resolved.diff_soln = false
    }

    if (msg.carr_soln !== undefined) {
      resolved.carr_soln = msg.carr_soln;
    }
    else {
      resolved.carr_soln = 0
    }

    if (msg.num_sv !== undefined) {
      resolved.num_sv = msg.num_sv;
    }
    else {
      resolved.num_sv = 0
    }

    if (msg.latitude !== undefined) {
      resolved.latitude = msg.latitude;
    }
    else {
      resolved.latitude = 0.0
    }

    if (msg.longitude !== undefined) {
      resolved.longitude = msg.longitude;
    }
    else {
      resolved.longitude = 0.0
    }

    if (msg.altitude !== undefined) {
      resolved.altitude = msg.altitude;
    }
    else {
      resolved.altitude = 0.0
    }

    if (msg.height_msl !== undefined) {
      resolved.height_msl = msg.height_msl;
    }
    else {
      resolved.height_msl = 0.0
    }

    if (msg.h_acc !== undefined) {
      resolved.h_acc = msg.h_acc;
    }
    else {
      resolved.h_acc = 0.0
    }

    if (msg.v_acc !== undefined) {
      resolved.v_acc = msg.v_acc;
    }
    else {
      resolved.v_acc = 0.0
    }

    if (msg.p_dop !== undefined) {
      resolved.p_dop = msg.p_dop;
    }
    else {
      resolved.p_dop = 0.0
    }

    if (msg.vel_n !== undefined) {
      resolved.vel_n = msg.vel_n;
    }
    else {
      resolved.vel_n = 0.0
    }

    if (msg.vel_e !== undefined) {
      resolved.vel_e = msg.vel_e;
    }
    else {
      resolved.vel_e = 0.0
    }

    if (msg.vel_d !== undefined) {
      resolved.vel_d = msg.vel_d;
    }
    else {
      resolved.vel_d = 0.0
    }

    if (msg.vel_acc !== undefined) {
      resolved.vel_acc = msg.vel_acc;
    }
    else {
      resolved.vel_acc = 0.0
    }

    return resolved;
    }
};

module.exports = GnssPVTSolnMsg;
