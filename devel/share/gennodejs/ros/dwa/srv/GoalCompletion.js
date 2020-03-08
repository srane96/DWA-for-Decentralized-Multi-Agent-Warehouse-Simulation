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

class GoalCompletionRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.bot_name = null;
      this.total_time = null;
    }
    else {
      if (initObj.hasOwnProperty('bot_name')) {
        this.bot_name = initObj.bot_name
      }
      else {
        this.bot_name = '';
      }
      if (initObj.hasOwnProperty('total_time')) {
        this.total_time = initObj.total_time
      }
      else {
        this.total_time = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GoalCompletionRequest
    // Serialize message field [bot_name]
    bufferOffset = _serializer.string(obj.bot_name, buffer, bufferOffset);
    // Serialize message field [total_time]
    bufferOffset = _serializer.float64(obj.total_time, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GoalCompletionRequest
    let len;
    let data = new GoalCompletionRequest(null);
    // Deserialize message field [bot_name]
    data.bot_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [total_time]
    data.total_time = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.bot_name.length;
    return length + 12;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dwa/GoalCompletionRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '37e2075fb9194b01cef6051f6458123b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string bot_name
    float64 total_time
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GoalCompletionRequest(null);
    if (msg.bot_name !== undefined) {
      resolved.bot_name = msg.bot_name;
    }
    else {
      resolved.bot_name = ''
    }

    if (msg.total_time !== undefined) {
      resolved.total_time = msg.total_time;
    }
    else {
      resolved.total_time = 0.0
    }

    return resolved;
    }
};

class GoalCompletionResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.success = null;
    }
    else {
      if (initObj.hasOwnProperty('success')) {
        this.success = initObj.success
      }
      else {
        this.success = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GoalCompletionResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GoalCompletionResponse
    let len;
    let data = new GoalCompletionResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dwa/GoalCompletionResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '358e233cde0c8a8bcfea4ce193f8fc15';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool success
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GoalCompletionResponse(null);
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
  Request: GoalCompletionRequest,
  Response: GoalCompletionResponse,
  md5sum() { return '4b461984e2301fa44aff8b9f6f3d11e2'; },
  datatype() { return 'dwa/GoalCompletion'; }
};
