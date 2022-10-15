// Auto-generated. Do not edit!

// (in-package cares_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let ScanningFeedback = require('./ScanningFeedback.js');
let MetricExtractionFeedback = require('./MetricExtractionFeedback.js');

//-----------------------------------------------------------

class MappingFeedback {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.status = null;
      this.scanning_feedback = null;
      this.metric_feedback = null;
    }
    else {
      if (initObj.hasOwnProperty('status')) {
        this.status = initObj.status
      }
      else {
        this.status = 0;
      }
      if (initObj.hasOwnProperty('scanning_feedback')) {
        this.scanning_feedback = initObj.scanning_feedback
      }
      else {
        this.scanning_feedback = [];
      }
      if (initObj.hasOwnProperty('metric_feedback')) {
        this.metric_feedback = initObj.metric_feedback
      }
      else {
        this.metric_feedback = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MappingFeedback
    // Serialize message field [status]
    bufferOffset = _serializer.uint8(obj.status, buffer, bufferOffset);
    // Serialize message field [scanning_feedback]
    // Serialize the length for message field [scanning_feedback]
    bufferOffset = _serializer.uint32(obj.scanning_feedback.length, buffer, bufferOffset);
    obj.scanning_feedback.forEach((val) => {
      bufferOffset = ScanningFeedback.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [metric_feedback]
    // Serialize the length for message field [metric_feedback]
    bufferOffset = _serializer.uint32(obj.metric_feedback.length, buffer, bufferOffset);
    obj.metric_feedback.forEach((val) => {
      bufferOffset = MetricExtractionFeedback.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MappingFeedback
    let len;
    let data = new MappingFeedback(null);
    // Deserialize message field [status]
    data.status = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [scanning_feedback]
    // Deserialize array length for message field [scanning_feedback]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.scanning_feedback = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.scanning_feedback[i] = ScanningFeedback.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [metric_feedback]
    // Deserialize array length for message field [metric_feedback]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.metric_feedback = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.metric_feedback[i] = MetricExtractionFeedback.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.scanning_feedback.length;
    length += 3 * object.metric_feedback.length;
    return length + 9;
  }

  static datatype() {
    // Returns string type for a message object
    return 'cares_msgs/MappingFeedback';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '91e330b58af41fd0b42e151e23f9a3da';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
    #feedback
    
    #Enumeration
    uint8 INIT       = 0
    uint8 SCANNING   = 1
    uint8 EXTRACTING = 2
    uint8 ACTUATING  = 3
    uint8 STOPPING   = 4
    #Task status
    uint8 status
    
    cares_msgs/ScanningFeedback[] scanning_feedback
    cares_msgs/MetricExtractionFeedback[] metric_feedback
    
    ================================================================================
    MSG: cares_msgs/ScanningFeedback
    # ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
    #feedback
    
    #Enumeration
    uint8 INIT       = 0
    uint8 MARKER     = 1
    uint8 CAPTURING  = 2
    uint8 ERROR      = 3
    #Task status
    uint8 status
    
    #Enumeration
    uint8 MOVING  = 4
    uint8 IDLE    = 5
    uint8 arm_status
    
    uint8 count
    uint8 total
    
    ================================================================================
    MSG: cares_msgs/MetricExtractionFeedback
    # ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
    #feedback definition
    #Enumeration
    uint8 CAPTURING = 0
    uint8 MEASURING = 1
    #Task status
    uint8 status
    
    uint8 processed
    uint8 queued
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MappingFeedback(null);
    if (msg.status !== undefined) {
      resolved.status = msg.status;
    }
    else {
      resolved.status = 0
    }

    if (msg.scanning_feedback !== undefined) {
      resolved.scanning_feedback = new Array(msg.scanning_feedback.length);
      for (let i = 0; i < resolved.scanning_feedback.length; ++i) {
        resolved.scanning_feedback[i] = ScanningFeedback.Resolve(msg.scanning_feedback[i]);
      }
    }
    else {
      resolved.scanning_feedback = []
    }

    if (msg.metric_feedback !== undefined) {
      resolved.metric_feedback = new Array(msg.metric_feedback.length);
      for (let i = 0; i < resolved.metric_feedback.length; ++i) {
        resolved.metric_feedback[i] = MetricExtractionFeedback.Resolve(msg.metric_feedback[i]);
      }
    }
    else {
      resolved.metric_feedback = []
    }

    return resolved;
    }
};

// Constants for message
MappingFeedback.Constants = {
  INIT: 0,
  SCANNING: 1,
  EXTRACTING: 2,
  ACTUATING: 3,
  STOPPING: 4,
}

module.exports = MappingFeedback;