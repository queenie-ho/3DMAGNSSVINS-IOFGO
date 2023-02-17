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

class GnssEphemMsg {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.sat = null;
      this.ttr = null;
      this.toe = null;
      this.toc = null;
      this.toe_tow = null;
      this.week = null;
      this.iode = null;
      this.iodc = null;
      this.health = null;
      this.code = null;
      this.ura = null;
      this.A = null;
      this.e = null;
      this.i0 = null;
      this.omg = null;
      this.OMG0 = null;
      this.M0 = null;
      this.delta_n = null;
      this.OMG_dot = null;
      this.i_dot = null;
      this.cuc = null;
      this.cus = null;
      this.crc = null;
      this.crs = null;
      this.cic = null;
      this.cis = null;
      this.af0 = null;
      this.af1 = null;
      this.af2 = null;
      this.tgd0 = null;
      this.tgd1 = null;
      this.A_dot = null;
      this.n_dot = null;
    }
    else {
      if (initObj.hasOwnProperty('sat')) {
        this.sat = initObj.sat
      }
      else {
        this.sat = 0;
      }
      if (initObj.hasOwnProperty('ttr')) {
        this.ttr = initObj.ttr
      }
      else {
        this.ttr = new GnssTimeMsg();
      }
      if (initObj.hasOwnProperty('toe')) {
        this.toe = initObj.toe
      }
      else {
        this.toe = new GnssTimeMsg();
      }
      if (initObj.hasOwnProperty('toc')) {
        this.toc = initObj.toc
      }
      else {
        this.toc = new GnssTimeMsg();
      }
      if (initObj.hasOwnProperty('toe_tow')) {
        this.toe_tow = initObj.toe_tow
      }
      else {
        this.toe_tow = 0.0;
      }
      if (initObj.hasOwnProperty('week')) {
        this.week = initObj.week
      }
      else {
        this.week = 0;
      }
      if (initObj.hasOwnProperty('iode')) {
        this.iode = initObj.iode
      }
      else {
        this.iode = 0;
      }
      if (initObj.hasOwnProperty('iodc')) {
        this.iodc = initObj.iodc
      }
      else {
        this.iodc = 0;
      }
      if (initObj.hasOwnProperty('health')) {
        this.health = initObj.health
      }
      else {
        this.health = 0;
      }
      if (initObj.hasOwnProperty('code')) {
        this.code = initObj.code
      }
      else {
        this.code = 0;
      }
      if (initObj.hasOwnProperty('ura')) {
        this.ura = initObj.ura
      }
      else {
        this.ura = 0.0;
      }
      if (initObj.hasOwnProperty('A')) {
        this.A = initObj.A
      }
      else {
        this.A = 0.0;
      }
      if (initObj.hasOwnProperty('e')) {
        this.e = initObj.e
      }
      else {
        this.e = 0.0;
      }
      if (initObj.hasOwnProperty('i0')) {
        this.i0 = initObj.i0
      }
      else {
        this.i0 = 0.0;
      }
      if (initObj.hasOwnProperty('omg')) {
        this.omg = initObj.omg
      }
      else {
        this.omg = 0.0;
      }
      if (initObj.hasOwnProperty('OMG0')) {
        this.OMG0 = initObj.OMG0
      }
      else {
        this.OMG0 = 0.0;
      }
      if (initObj.hasOwnProperty('M0')) {
        this.M0 = initObj.M0
      }
      else {
        this.M0 = 0.0;
      }
      if (initObj.hasOwnProperty('delta_n')) {
        this.delta_n = initObj.delta_n
      }
      else {
        this.delta_n = 0.0;
      }
      if (initObj.hasOwnProperty('OMG_dot')) {
        this.OMG_dot = initObj.OMG_dot
      }
      else {
        this.OMG_dot = 0.0;
      }
      if (initObj.hasOwnProperty('i_dot')) {
        this.i_dot = initObj.i_dot
      }
      else {
        this.i_dot = 0.0;
      }
      if (initObj.hasOwnProperty('cuc')) {
        this.cuc = initObj.cuc
      }
      else {
        this.cuc = 0.0;
      }
      if (initObj.hasOwnProperty('cus')) {
        this.cus = initObj.cus
      }
      else {
        this.cus = 0.0;
      }
      if (initObj.hasOwnProperty('crc')) {
        this.crc = initObj.crc
      }
      else {
        this.crc = 0.0;
      }
      if (initObj.hasOwnProperty('crs')) {
        this.crs = initObj.crs
      }
      else {
        this.crs = 0.0;
      }
      if (initObj.hasOwnProperty('cic')) {
        this.cic = initObj.cic
      }
      else {
        this.cic = 0.0;
      }
      if (initObj.hasOwnProperty('cis')) {
        this.cis = initObj.cis
      }
      else {
        this.cis = 0.0;
      }
      if (initObj.hasOwnProperty('af0')) {
        this.af0 = initObj.af0
      }
      else {
        this.af0 = 0.0;
      }
      if (initObj.hasOwnProperty('af1')) {
        this.af1 = initObj.af1
      }
      else {
        this.af1 = 0.0;
      }
      if (initObj.hasOwnProperty('af2')) {
        this.af2 = initObj.af2
      }
      else {
        this.af2 = 0.0;
      }
      if (initObj.hasOwnProperty('tgd0')) {
        this.tgd0 = initObj.tgd0
      }
      else {
        this.tgd0 = 0.0;
      }
      if (initObj.hasOwnProperty('tgd1')) {
        this.tgd1 = initObj.tgd1
      }
      else {
        this.tgd1 = 0.0;
      }
      if (initObj.hasOwnProperty('A_dot')) {
        this.A_dot = initObj.A_dot
      }
      else {
        this.A_dot = 0.0;
      }
      if (initObj.hasOwnProperty('n_dot')) {
        this.n_dot = initObj.n_dot
      }
      else {
        this.n_dot = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GnssEphemMsg
    // Serialize message field [sat]
    bufferOffset = _serializer.uint32(obj.sat, buffer, bufferOffset);
    // Serialize message field [ttr]
    bufferOffset = GnssTimeMsg.serialize(obj.ttr, buffer, bufferOffset);
    // Serialize message field [toe]
    bufferOffset = GnssTimeMsg.serialize(obj.toe, buffer, bufferOffset);
    // Serialize message field [toc]
    bufferOffset = GnssTimeMsg.serialize(obj.toc, buffer, bufferOffset);
    // Serialize message field [toe_tow]
    bufferOffset = _serializer.float64(obj.toe_tow, buffer, bufferOffset);
    // Serialize message field [week]
    bufferOffset = _serializer.uint32(obj.week, buffer, bufferOffset);
    // Serialize message field [iode]
    bufferOffset = _serializer.uint32(obj.iode, buffer, bufferOffset);
    // Serialize message field [iodc]
    bufferOffset = _serializer.uint32(obj.iodc, buffer, bufferOffset);
    // Serialize message field [health]
    bufferOffset = _serializer.uint32(obj.health, buffer, bufferOffset);
    // Serialize message field [code]
    bufferOffset = _serializer.uint32(obj.code, buffer, bufferOffset);
    // Serialize message field [ura]
    bufferOffset = _serializer.float64(obj.ura, buffer, bufferOffset);
    // Serialize message field [A]
    bufferOffset = _serializer.float64(obj.A, buffer, bufferOffset);
    // Serialize message field [e]
    bufferOffset = _serializer.float64(obj.e, buffer, bufferOffset);
    // Serialize message field [i0]
    bufferOffset = _serializer.float64(obj.i0, buffer, bufferOffset);
    // Serialize message field [omg]
    bufferOffset = _serializer.float64(obj.omg, buffer, bufferOffset);
    // Serialize message field [OMG0]
    bufferOffset = _serializer.float64(obj.OMG0, buffer, bufferOffset);
    // Serialize message field [M0]
    bufferOffset = _serializer.float64(obj.M0, buffer, bufferOffset);
    // Serialize message field [delta_n]
    bufferOffset = _serializer.float64(obj.delta_n, buffer, bufferOffset);
    // Serialize message field [OMG_dot]
    bufferOffset = _serializer.float64(obj.OMG_dot, buffer, bufferOffset);
    // Serialize message field [i_dot]
    bufferOffset = _serializer.float64(obj.i_dot, buffer, bufferOffset);
    // Serialize message field [cuc]
    bufferOffset = _serializer.float64(obj.cuc, buffer, bufferOffset);
    // Serialize message field [cus]
    bufferOffset = _serializer.float64(obj.cus, buffer, bufferOffset);
    // Serialize message field [crc]
    bufferOffset = _serializer.float64(obj.crc, buffer, bufferOffset);
    // Serialize message field [crs]
    bufferOffset = _serializer.float64(obj.crs, buffer, bufferOffset);
    // Serialize message field [cic]
    bufferOffset = _serializer.float64(obj.cic, buffer, bufferOffset);
    // Serialize message field [cis]
    bufferOffset = _serializer.float64(obj.cis, buffer, bufferOffset);
    // Serialize message field [af0]
    bufferOffset = _serializer.float64(obj.af0, buffer, bufferOffset);
    // Serialize message field [af1]
    bufferOffset = _serializer.float64(obj.af1, buffer, bufferOffset);
    // Serialize message field [af2]
    bufferOffset = _serializer.float64(obj.af2, buffer, bufferOffset);
    // Serialize message field [tgd0]
    bufferOffset = _serializer.float64(obj.tgd0, buffer, bufferOffset);
    // Serialize message field [tgd1]
    bufferOffset = _serializer.float64(obj.tgd1, buffer, bufferOffset);
    // Serialize message field [A_dot]
    bufferOffset = _serializer.float64(obj.A_dot, buffer, bufferOffset);
    // Serialize message field [n_dot]
    bufferOffset = _serializer.float64(obj.n_dot, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GnssEphemMsg
    let len;
    let data = new GnssEphemMsg(null);
    // Deserialize message field [sat]
    data.sat = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [ttr]
    data.ttr = GnssTimeMsg.deserialize(buffer, bufferOffset);
    // Deserialize message field [toe]
    data.toe = GnssTimeMsg.deserialize(buffer, bufferOffset);
    // Deserialize message field [toc]
    data.toc = GnssTimeMsg.deserialize(buffer, bufferOffset);
    // Deserialize message field [toe_tow]
    data.toe_tow = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [week]
    data.week = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [iode]
    data.iode = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [iodc]
    data.iodc = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [health]
    data.health = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [code]
    data.code = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [ura]
    data.ura = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [A]
    data.A = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [e]
    data.e = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [i0]
    data.i0 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [omg]
    data.omg = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [OMG0]
    data.OMG0 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [M0]
    data.M0 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [delta_n]
    data.delta_n = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [OMG_dot]
    data.OMG_dot = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [i_dot]
    data.i_dot = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [cuc]
    data.cuc = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [cus]
    data.cus = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [crc]
    data.crc = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [crs]
    data.crs = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [cic]
    data.cic = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [cis]
    data.cis = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [af0]
    data.af0 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [af1]
    data.af1 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [af2]
    data.af2 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [tgd0]
    data.tgd0 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [tgd1]
    data.tgd1 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [A_dot]
    data.A_dot = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [n_dot]
    data.n_dot = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 252;
  }

  static datatype() {
    // Returns string type for a message object
    return 'gnss_comm/GnssEphemMsg';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b4346f99e431c870e392a438684c0fe8';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # This message contains GPS, Galileo and BeiDou ephemeris data
    
    uint32 sat
    GnssTimeMsg ttr
    GnssTimeMsg toe
    GnssTimeMsg toc
    float64 toe_tow
    uint32 week
    uint32 iode
    uint32 iodc
    uint32 health
    uint32 code
    float64 ura
    float64 A
    float64 e
    float64 i0
    float64 omg
    float64 OMG0
    float64 M0
    float64 delta_n
    float64 OMG_dot
    float64 i_dot
    float64 cuc
    float64 cus
    float64 crc
    float64 crs
    float64 cic
    float64 cis
    float64 af0
    float64 af1
    float64 af2
    float64 tgd0
    float64 tgd1
    float64 A_dot
    float64 n_dot
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
    const resolved = new GnssEphemMsg(null);
    if (msg.sat !== undefined) {
      resolved.sat = msg.sat;
    }
    else {
      resolved.sat = 0
    }

    if (msg.ttr !== undefined) {
      resolved.ttr = GnssTimeMsg.Resolve(msg.ttr)
    }
    else {
      resolved.ttr = new GnssTimeMsg()
    }

    if (msg.toe !== undefined) {
      resolved.toe = GnssTimeMsg.Resolve(msg.toe)
    }
    else {
      resolved.toe = new GnssTimeMsg()
    }

    if (msg.toc !== undefined) {
      resolved.toc = GnssTimeMsg.Resolve(msg.toc)
    }
    else {
      resolved.toc = new GnssTimeMsg()
    }

    if (msg.toe_tow !== undefined) {
      resolved.toe_tow = msg.toe_tow;
    }
    else {
      resolved.toe_tow = 0.0
    }

    if (msg.week !== undefined) {
      resolved.week = msg.week;
    }
    else {
      resolved.week = 0
    }

    if (msg.iode !== undefined) {
      resolved.iode = msg.iode;
    }
    else {
      resolved.iode = 0
    }

    if (msg.iodc !== undefined) {
      resolved.iodc = msg.iodc;
    }
    else {
      resolved.iodc = 0
    }

    if (msg.health !== undefined) {
      resolved.health = msg.health;
    }
    else {
      resolved.health = 0
    }

    if (msg.code !== undefined) {
      resolved.code = msg.code;
    }
    else {
      resolved.code = 0
    }

    if (msg.ura !== undefined) {
      resolved.ura = msg.ura;
    }
    else {
      resolved.ura = 0.0
    }

    if (msg.A !== undefined) {
      resolved.A = msg.A;
    }
    else {
      resolved.A = 0.0
    }

    if (msg.e !== undefined) {
      resolved.e = msg.e;
    }
    else {
      resolved.e = 0.0
    }

    if (msg.i0 !== undefined) {
      resolved.i0 = msg.i0;
    }
    else {
      resolved.i0 = 0.0
    }

    if (msg.omg !== undefined) {
      resolved.omg = msg.omg;
    }
    else {
      resolved.omg = 0.0
    }

    if (msg.OMG0 !== undefined) {
      resolved.OMG0 = msg.OMG0;
    }
    else {
      resolved.OMG0 = 0.0
    }

    if (msg.M0 !== undefined) {
      resolved.M0 = msg.M0;
    }
    else {
      resolved.M0 = 0.0
    }

    if (msg.delta_n !== undefined) {
      resolved.delta_n = msg.delta_n;
    }
    else {
      resolved.delta_n = 0.0
    }

    if (msg.OMG_dot !== undefined) {
      resolved.OMG_dot = msg.OMG_dot;
    }
    else {
      resolved.OMG_dot = 0.0
    }

    if (msg.i_dot !== undefined) {
      resolved.i_dot = msg.i_dot;
    }
    else {
      resolved.i_dot = 0.0
    }

    if (msg.cuc !== undefined) {
      resolved.cuc = msg.cuc;
    }
    else {
      resolved.cuc = 0.0
    }

    if (msg.cus !== undefined) {
      resolved.cus = msg.cus;
    }
    else {
      resolved.cus = 0.0
    }

    if (msg.crc !== undefined) {
      resolved.crc = msg.crc;
    }
    else {
      resolved.crc = 0.0
    }

    if (msg.crs !== undefined) {
      resolved.crs = msg.crs;
    }
    else {
      resolved.crs = 0.0
    }

    if (msg.cic !== undefined) {
      resolved.cic = msg.cic;
    }
    else {
      resolved.cic = 0.0
    }

    if (msg.cis !== undefined) {
      resolved.cis = msg.cis;
    }
    else {
      resolved.cis = 0.0
    }

    if (msg.af0 !== undefined) {
      resolved.af0 = msg.af0;
    }
    else {
      resolved.af0 = 0.0
    }

    if (msg.af1 !== undefined) {
      resolved.af1 = msg.af1;
    }
    else {
      resolved.af1 = 0.0
    }

    if (msg.af2 !== undefined) {
      resolved.af2 = msg.af2;
    }
    else {
      resolved.af2 = 0.0
    }

    if (msg.tgd0 !== undefined) {
      resolved.tgd0 = msg.tgd0;
    }
    else {
      resolved.tgd0 = 0.0
    }

    if (msg.tgd1 !== undefined) {
      resolved.tgd1 = msg.tgd1;
    }
    else {
      resolved.tgd1 = 0.0
    }

    if (msg.A_dot !== undefined) {
      resolved.A_dot = msg.A_dot;
    }
    else {
      resolved.A_dot = 0.0
    }

    if (msg.n_dot !== undefined) {
      resolved.n_dot = msg.n_dot;
    }
    else {
      resolved.n_dot = 0.0
    }

    return resolved;
    }
};

module.exports = GnssEphemMsg;
