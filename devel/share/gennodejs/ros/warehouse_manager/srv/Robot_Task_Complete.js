// Auto-generated. Do not edit!

// (in-package warehouse_manager.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class Robot_Task_CompleteRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.robot_name = null;
      this.time_taken = null;
      this.shortest_distance = null;
    }
    else {
      if (initObj.hasOwnProperty('robot_name')) {
        this.robot_name = initObj.robot_name
      }
      else {
        this.robot_name = '';
      }
      if (initObj.hasOwnProperty('time_taken')) {
        this.time_taken = initObj.time_taken
      }
      else {
        this.time_taken = 0.0;
      }
      if (initObj.hasOwnProperty('shortest_distance')) {
        this.shortest_distance = initObj.shortest_distance
      }
      else {
        this.shortest_distance = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Robot_Task_CompleteRequest
    // Serialize message field [robot_name]
    bufferOffset = _serializer.string(obj.robot_name, buffer, bufferOffset);
    // Serialize message field [time_taken]
    bufferOffset = _serializer.float64(obj.time_taken, buffer, bufferOffset);
    // Serialize message field [shortest_distance]
    bufferOffset = _serializer.float64(obj.shortest_distance, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Robot_Task_CompleteRequest
    let len;
    let data = new Robot_Task_CompleteRequest(null);
    // Deserialize message field [robot_name]
    data.robot_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [time_taken]
    data.time_taken = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [shortest_distance]
    data.shortest_distance = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.robot_name.length;
    return length + 20;
  }

  static datatype() {
    // Returns string type for a service object
    return 'warehouse_manager/Robot_Task_CompleteRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd97d7930a530aa4c1ce9a0a5e1c268f1';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string robot_name
    float64 time_taken
    float64 shortest_distance
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Robot_Task_CompleteRequest(null);
    if (msg.robot_name !== undefined) {
      resolved.robot_name = msg.robot_name;
    }
    else {
      resolved.robot_name = ''
    }

    if (msg.time_taken !== undefined) {
      resolved.time_taken = msg.time_taken;
    }
    else {
      resolved.time_taken = 0.0
    }

    if (msg.shortest_distance !== undefined) {
      resolved.shortest_distance = msg.shortest_distance;
    }
    else {
      resolved.shortest_distance = 0.0
    }

    return resolved;
    }
};

class Robot_Task_CompleteResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Robot_Task_CompleteResponse
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Robot_Task_CompleteResponse
    let len;
    let data = new Robot_Task_CompleteResponse(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'warehouse_manager/Robot_Task_CompleteResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd41d8cd98f00b204e9800998ecf8427e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Robot_Task_CompleteResponse(null);
    return resolved;
    }
};

module.exports = {
  Request: Robot_Task_CompleteRequest,
  Response: Robot_Task_CompleteResponse,
  md5sum() { return 'd97d7930a530aa4c1ce9a0a5e1c268f1'; },
  datatype() { return 'warehouse_manager/Robot_Task_Complete'; }
};
