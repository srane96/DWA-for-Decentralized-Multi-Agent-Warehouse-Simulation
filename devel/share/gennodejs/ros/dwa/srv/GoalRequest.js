// Auto-generated. Do not edit!

// (in-package dwa.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class GoalRequestRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.bot_name = null;
    }
    else {
      if (initObj.hasOwnProperty('bot_name')) {
        this.bot_name = initObj.bot_name
      }
      else {
        this.bot_name = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GoalRequestRequest
    // Serialize message field [bot_name]
    bufferOffset = _serializer.string(obj.bot_name, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GoalRequestRequest
    let len;
    let data = new GoalRequestRequest(null);
    // Deserialize message field [bot_name]
    data.bot_name = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.bot_name.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dwa/GoalRequestRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '538473db0cbbce885b1f9f383e540f13';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string bot_name
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GoalRequestRequest(null);
    if (msg.bot_name !== undefined) {
      resolved.bot_name = msg.bot_name;
    }
    else {
      resolved.bot_name = ''
    }

    return resolved;
    }
};

class GoalRequestResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.goal_x = null;
      this.goal_y = null;
      this.goal_name = null;
      this.stamp = null;
      this.success = null;
    }
    else {
      if (initObj.hasOwnProperty('goal_x')) {
        this.goal_x = initObj.goal_x
      }
      else {
        this.goal_x = 0;
      }
      if (initObj.hasOwnProperty('goal_y')) {
        this.goal_y = initObj.goal_y
      }
      else {
        this.goal_y = 0;
      }
      if (initObj.hasOwnProperty('goal_name')) {
        this.goal_name = initObj.goal_name
      }
      else {
        this.goal_name = '';
      }
      if (initObj.hasOwnProperty('stamp')) {
        this.stamp = initObj.stamp
      }
      else {
        this.stamp = {secs: 0, nsecs: 0};
      }
      if (initObj.hasOwnProperty('success')) {
        this.success = initObj.success
      }
      else {
        this.success = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GoalRequestResponse
    // Serialize message field [goal_x]
    bufferOffset = _serializer.int64(obj.goal_x, buffer, bufferOffset);
    // Serialize message field [goal_y]
    bufferOffset = _serializer.int64(obj.goal_y, buffer, bufferOffset);
    // Serialize message field [goal_name]
    bufferOffset = _serializer.string(obj.goal_name, buffer, bufferOffset);
    // Serialize message field [stamp]
    bufferOffset = _serializer.time(obj.stamp, buffer, bufferOffset);
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GoalRequestResponse
    let len;
    let data = new GoalRequestResponse(null);
    // Deserialize message field [goal_x]
    data.goal_x = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [goal_y]
    data.goal_y = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [goal_name]
    data.goal_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [stamp]
    data.stamp = _deserializer.time(buffer, bufferOffset);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.goal_name.length;
    return length + 29;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dwa/GoalRequestResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2fab0aa1467e4af7d3e9436fadbc0fdc';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int64 goal_x
    int64 goal_y
    string goal_name
    time stamp
    bool success
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GoalRequestResponse(null);
    if (msg.goal_x !== undefined) {
      resolved.goal_x = msg.goal_x;
    }
    else {
      resolved.goal_x = 0
    }

    if (msg.goal_y !== undefined) {
      resolved.goal_y = msg.goal_y;
    }
    else {
      resolved.goal_y = 0
    }

    if (msg.goal_name !== undefined) {
      resolved.goal_name = msg.goal_name;
    }
    else {
      resolved.goal_name = ''
    }

    if (msg.stamp !== undefined) {
      resolved.stamp = msg.stamp;
    }
    else {
      resolved.stamp = {secs: 0, nsecs: 0}
    }

    if (msg.success !== undefined) {
      resolved.success = msg.success;
    }
    else {
      resolved.success = false
    }

    return resolved;
    }
};

module.exports = {
  Request: GoalRequestRequest,
  Response: GoalRequestResponse,
  md5sum() { return '564d06e8e5ce821e99b2ea5ba96820ea'; },
  datatype() { return 'dwa/GoalRequest'; }
};
