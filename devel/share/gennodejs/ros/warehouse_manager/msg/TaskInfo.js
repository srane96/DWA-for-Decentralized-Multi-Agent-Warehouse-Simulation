// Auto-generated. Do not edit!

// (in-package warehouse_manager.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class TaskInfo {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.robot_list = null;
      this.task_list = null;
    }
    else {
      if (initObj.hasOwnProperty('robot_list')) {
        this.robot_list = initObj.robot_list
      }
      else {
        this.robot_list = [];
      }
      if (initObj.hasOwnProperty('task_list')) {
        this.task_list = initObj.task_list
      }
      else {
        this.task_list = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TaskInfo
    // Serialize message field [robot_list]
    bufferOffset = _arraySerializer.string(obj.robot_list, buffer, bufferOffset, null);
    // Serialize message field [task_list]
    bufferOffset = _arraySerializer.string(obj.task_list, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TaskInfo
    let len;
    let data = new TaskInfo(null);
    // Deserialize message field [robot_list]
    data.robot_list = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [task_list]
    data.task_list = _arrayDeserializer.string(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.robot_list.forEach((val) => {
      length += 4 + val.length;
    });
    object.task_list.forEach((val) => {
      length += 4 + val.length;
    });
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'warehouse_manager/TaskInfo';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '17840239039ae6341a939e8b4e5eeb0c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string[] robot_list
    string[] task_list
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TaskInfo(null);
    if (msg.robot_list !== undefined) {
      resolved.robot_list = msg.robot_list;
    }
    else {
      resolved.robot_list = []
    }

    if (msg.task_list !== undefined) {
      resolved.task_list = msg.task_list;
    }
    else {
      resolved.task_list = []
    }

    return resolved;
    }
};

module.exports = TaskInfo;
