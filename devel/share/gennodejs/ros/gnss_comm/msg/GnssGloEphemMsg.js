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

class GnssGloEphemMsg {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.sat = null;
      this.ttr = null;
      this.toe = null;
      this.freqo = null;
      this.iode = null;
      this.health = null;
      this.age = null;
      this.ura = null;
      this.pos_x = null;
      this.pos_y = null;
      this.pos_z = null;
      this.vel_x = null;
      this.vel_y = null;
      this.vel_z = null;
      this.acc_x = null;
      this.acc_y = null;
      this.acc_z = null;
      this.tau_n = null;
      this.gamma = null;
      this.delta_tau_n = null;
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
      if (initObj.hasOwnProperty('freqo')) {
        this.freqo = initObj.freqo
      }
      else {
        this.freqo = 0;
      }
      if (initObj.hasOwnProperty('iode')) {
        this.iode = initObj.iode
      }
      else {
        this.iode = 0;
      }
      if (initObj.hasOwnProperty('health')) {
        this.health = initObj.health
      }
      else {
        this.health = 0;
      }
      if (initObj.hasOwnProperty('age')) {
        this.age = initObj.age
      }
      else {
        this.age = 0;
      }
      if (initObj.hasOwnProperty('ura')) {
        this.ura = initObj.ura
      }
      else {
        this.ura = 0.0;
      }
      if (initObj.hasOwnProperty('pos_x')) {
        this.pos_x = initObj.pos_x
      }
      else {
        this.pos_x = 0.0;
      }
      if (initObj.hasOwnProperty('pos_y')) {
        this.pos_y = initObj.pos_y
      }
      else {
        this.pos_y = 0.0;
      }
      if (initObj.hasOwnProperty('pos_z')) {
        this.pos_z = initObj.pos_z
      }
      else {
        this.pos_z = 0.0;
      }
      if (initObj.hasOwnProperty('vel_x')) {
        this.vel_x = initObj.vel_x
      }
      else {
        this.vel_x = 0.0;
      }
      if (initObj.hasOwnProperty('vel_y')) {
        this.vel_y = initObj.vel_y
      }
      else {
        this.vel_y = 0.0;
      }
      if (initObj.hasOwnProperty('vel_z')) {
        this.vel_z = initObj.vel_z
      }
      else {
        this.vel_z = 0.0;
      }
      if (initObj.hasOwnProperty('acc_x')) {
        this.acc_x = initObj.acc_x
      }
      else {
        this.acc_x = 0.0;
      }
      if (initObj.hasOwnProperty('acc_y')) {
        this.acc_y = initObj.acc_y
      }
      else {
        this.acc_y = 0.0;
      }
      if (initObj.hasOwnProperty('acc_z')) {
        this.acc_z = initObj.acc_z
      }
      else {
        this.acc_z = 0.0;
      }
      if (initObj.hasOwnProperty('tau_n')) {
        this.tau_n = initObj.tau_n
      }
      else {
        this.tau_n = 0.0;
      }
      if (initObj.hasOwnProperty('gamma')) {
        this.gamma = initObj.gamma
      }
      else {
        this.gamma = 0.0;
      }
      if (initObj.hasOwnProperty('delta_tau_n')) {
        this.delta_tau_n = initObj.delta_tau_n
      }
      else {
        this.delta_tau_n = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GnssGloEphemMsg
    // Serialize message field [sat]
    bufferOffset = _serializer.uint32(obj.sat, buffer, bufferOffset);
    // Serialize message field [ttr]
    bufferOffset = GnssTimeMsg.serialize(obj.ttr, buffer, bufferOffset);
    // Serialize message field [toe]
    bufferOffset = GnssTimeMsg.serialize(obj.toe, buffer, bufferOffset);
    // Serialize message field [freqo]
    bufferOffset = _serializer.int32(obj.freqo, buffer, bufferOffset);
    // Serialize message field [iode]
    bufferOffset = _serializer.uint32(obj.iode, buffer, bufferOffset);
    // Serialize message field [health]
    bufferOffset = _serializer.uint32(obj.health, buffer, bufferOffset);
    // Serialize message field [age]
    bufferOffset = _serializer.uint32(obj.age, buffer, bufferOffset);
    // Serialize message field [ura]
    bufferOffset = _serializer.float64(obj.ura, buffer, bufferOffset);
    // Serialize message field [pos_x]
    bufferOffset = _serializer.float64(obj.pos_x, buffer, bufferOffset);
    // Serialize message field [pos_y]
    bufferOffset = _serializer.float64(obj.pos_y, buffer, bufferOffset);
    // Serialize message field [pos_z]
    bufferOffset = _serializer.float64(obj.pos_z, buffer, bufferOffset);
    // Serialize message field [vel_x]
    bufferOffset = _serializer.float64(obj.vel_x, buffer, bufferOffset);
    // Serialize message field [vel_y]
    bufferOffset = _serializer.float64(obj.vel_y, buffer, bufferOffset);
    // Serialize message field [vel_z]
    bufferOffset = _serializer.float64(obj.vel_z, buffer, bufferOffset);
    // Serialize message field [acc_x]
    bufferOffset = _serializer.float64(obj.acc_x, buffer, bufferOffset);
    // Serialize message field [acc_y]
    bufferOffset = _serializer.float64(obj.acc_y, buffer, bufferOffset);
    // Serialize message field [acc_z]
    bufferOffset = _serializer.float64(obj.acc_z, buffer, bufferOffset);
    // Serialize message field [tau_n]
    bufferOffset = _serializer.float64(obj.tau_n, buffer, bufferOffset);
    // Serialize message field [gamma]
    bufferOffset = _serializer.float64(obj.gamma, buffer, bufferOffset);
    // Serialize message field [delta_tau_n]
    bufferOffset = _serializer.float64(obj.delta_tau_n, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GnssGloEphemMsg
    let len;
    let data = new GnssGloEphemMsg(null);
    // Deserialize message field [sat]
    data.sat = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [ttr]
    data.ttr = GnssTimeMsg.deserialize(buffer, bufferOffset);
    // Deserialize message field [toe]
    data.toe = GnssTimeMsg.deserialize(buffer, bufferOffset);
    // Deserialize message field [freqo]
    data.freqo = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [iode]
    data.iode = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [health]
    data.health = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [age]
    data.age = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [ura]
    data.ura = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [pos_x]
    data.pos_x = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [pos_y]
    data.pos_y = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [pos_z]
    data.pos_z = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [vel_x]
    data.vel_x = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [vel_y]
    data.vel_y = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [vel_z]
    data.vel_z = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [acc_x]
    data.acc_x = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [acc_y]
    data.acc_y = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [acc_z]
    data.acc_z = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [tau_n]
    data.tau_n = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [gamma]
    data.gamma = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [delta_tau_n]
    data.delta_tau_n = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 148;
  }

  static datatype() {
    // Returns string type for a message object
    return 'gnss_comm/GnssGloEphemMsg';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6893dee0d8b1c9325a6693f3488e0144';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # This message contains GLONASS ephemeris data
    
    uint32 sat
    GnssTimeMsg ttr
    GnssTimeMsg toe
    int32  freqo
    uint32 iode
    uint32 health
    uint32 age
    float64 ura
    float64 pos_x
    float64 pos_y
    float64 pos_z
    float64 vel_x
    float64 vel_y
    float64 vel_z
    float64 acc_x
    float64 acc_y
    float64 acc_z
    float64 tau_n
    float64 gamma
    float64 delta_tau_n
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
    const resolved = new GnssGloEphemMsg(null);
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

    if (msg.freqo !== undefined) {
      resolved.freqo = msg.freqo;
    }
    else {
      resolved.freqo = 0
    }

    if (msg.iode !== undefined) {
      resolved.iode = msg.iode;
    }
    else {
      resolved.iode = 0
    }

    if (msg.health !== undefined) {
      resolved.health = msg.health;
    }
    else {
      resolved.health = 0
    }

    if (msg.age !== undefined) {
      resolved.age = msg.age;
    }
    else {
      resolved.age = 0
    }

    if (msg.ura !== undefined) {
      resolved.ura = msg.ura;
    }
    else {
      resolved.ura = 0.0
    }

    if (msg.pos_x !== undefined) {
      resolved.pos_x = msg.pos_x;
    }
    else {
      resolved.pos_x = 0.0
    }

    if (msg.pos_y !== undefined) {
      resolved.pos_y = msg.pos_y;
    }
    else {
      resolved.pos_y = 0.0
    }

    if (msg.pos_z !== undefined) {
      resolved.pos_z = msg.pos_z;
    }
    else {
      resolved.pos_z = 0.0
    }

    if (msg.vel_x !== undefined) {
      resolved.vel_x = msg.vel_x;
    }
    else {
      resolved.vel_x = 0.0
    }

    if (msg.vel_y !== undefined) {
      resolved.vel_y = msg.vel_y;
    }
    else {
      resolved.vel_y = 0.0
    }

    if (msg.vel_z !== undefined) {
      resolved.vel_z = msg.vel_z;
    }
    else {
      resolved.vel_z = 0.0
    }

    if (msg.acc_x !== undefined) {
      resolved.acc_x = msg.acc_x;
    }
    else {
      resolved.acc_x = 0.0
    }

    if (msg.acc_y !== undefined) {
      resolved.acc_y = msg.acc_y;
    }
    else {
      resolved.acc_y = 0.0
    }

    if (msg.acc_z !== undefined) {
      resolved.acc_z = msg.acc_z;
    }
    else {
      resolved.acc_z = 0.0
    }

    if (msg.tau_n !== undefined) {
      resolved.tau_n = msg.tau_n;
    }
    else {
      resolved.tau_n = 0.0
    }

    if (msg.gamma !== undefined) {
      resolved.gamma = msg.gamma;
    }
    else {
      resolved.gamma = 0.0
    }

    if (msg.delta_tau_n !== undefined) {
      resolved.delta_tau_n = msg.delta_tau_n;
    }
    else {
      resolved.delta_tau_n = 0.0
    }

    return resolved;
    }
};

module.exports = GnssGloEphemMsg;
