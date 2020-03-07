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

class goal_requestRequest {
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
    // Serializes a message object of type goal_requestRequest
    // Serialize message field [bot_name]
    bufferOffset = _serializer.string(obj.bot_name, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type goal_requestRequest
    let len;
    let data = new goal_requestRequest(null);
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
    return 'dwa/goal_requestRequest';
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
    const resolved = new goal_requestRequest(null);
    if (msg.bot_name !== undefined) {
      resolved.bot_name = msg.bot_name;
    }
    else {
      resolved.bot_name = ''
    }

    return resolved;
    }
};

class goal_requestResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.goal_x = null;
      this.goal_y = null;
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
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type goal_requestResponse
    // Serialize message field [goal_x]
    bufferOffset = _serializer.int64(obj.goal_x, buffer, bufferOffset);
    // Serialize message field [goal_y]
    bufferOffset = _serializer.int64(obj.goal_y, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type goal_requestResponse
    let len;
    let data = new goal_requestResponse(null);
    // Deserialize message field [goal_x]
    data.goal_x = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [goal_y]
    data.goal_y = _deserializer.int64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 16;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dwa/goal_requestResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f850839b0e98979c967a25c801509e73';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int64 goal_x
    int64 goal_y
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new goal_requestResponse(null);
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

    return resolved;
    }
};

module.exports = {
  Request: goal_requestRequest,
  Response: goal_requestResponse,
  md5sum() { return '499690bc96645941011b473b24eb20ab'; },
  datatype() { return 'dwa/goal_request'; }
};
