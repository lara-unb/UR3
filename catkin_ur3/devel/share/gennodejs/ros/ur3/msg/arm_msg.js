// Auto-generated. Do not edit!

// (in-package ur3.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class arm_msg {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.pose = null;
      this.velocity = null;
      this.torque = null;
    }
    else {
      if (initObj.hasOwnProperty('pose')) {
        this.pose = initObj.pose
      }
      else {
        this.pose = new Array(6).fill(0);
      }
      if (initObj.hasOwnProperty('velocity')) {
        this.velocity = initObj.velocity
      }
      else {
        this.velocity = new Array(6).fill(0);
      }
      if (initObj.hasOwnProperty('torque')) {
        this.torque = initObj.torque
      }
      else {
        this.torque = new Array(6).fill(0);
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type arm_msg
    // Check that the constant length array field [pose] has the right length
    if (obj.pose.length !== 6) {
      throw new Error('Unable to serialize array field pose - length must be 6')
    }
    // Serialize message field [pose]
    bufferOffset = _arraySerializer.float32(obj.pose, buffer, bufferOffset, 6);
    // Check that the constant length array field [velocity] has the right length
    if (obj.velocity.length !== 6) {
      throw new Error('Unable to serialize array field velocity - length must be 6')
    }
    // Serialize message field [velocity]
    bufferOffset = _arraySerializer.float32(obj.velocity, buffer, bufferOffset, 6);
    // Check that the constant length array field [torque] has the right length
    if (obj.torque.length !== 6) {
      throw new Error('Unable to serialize array field torque - length must be 6')
    }
    // Serialize message field [torque]
    bufferOffset = _arraySerializer.float32(obj.torque, buffer, bufferOffset, 6);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type arm_msg
    let len;
    let data = new arm_msg(null);
    // Deserialize message field [pose]
    data.pose = _arrayDeserializer.float32(buffer, bufferOffset, 6)
    // Deserialize message field [velocity]
    data.velocity = _arrayDeserializer.float32(buffer, bufferOffset, 6)
    // Deserialize message field [torque]
    data.torque = _arrayDeserializer.float32(buffer, bufferOffset, 6)
    return data;
  }

  static getMessageSize(object) {
    return 72;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ur3/arm_msg';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9a4d464236a1d2454f78317edb9a4f4e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32[6] pose
    float32[6] velocity
    float32[6] torque
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new arm_msg(null);
    if (msg.pose !== undefined) {
      resolved.pose = msg.pose;
    }
    else {
      resolved.pose = new Array(6).fill(0)
    }

    if (msg.velocity !== undefined) {
      resolved.velocity = msg.velocity;
    }
    else {
      resolved.velocity = new Array(6).fill(0)
    }

    if (msg.torque !== undefined) {
      resolved.torque = msg.torque;
    }
    else {
      resolved.torque = new Array(6).fill(0)
    }

    return resolved;
    }
};

module.exports = arm_msg;
