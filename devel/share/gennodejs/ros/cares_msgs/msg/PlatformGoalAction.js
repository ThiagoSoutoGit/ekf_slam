// Auto-generated. Do not edit!

// (in-package cares_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let PlatformGoalActionGoal = require('./PlatformGoalActionGoal.js');
let PlatformGoalActionResult = require('./PlatformGoalActionResult.js');
let PlatformGoalActionFeedback = require('./PlatformGoalActionFeedback.js');

//-----------------------------------------------------------

class PlatformGoalAction {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.action_goal = null;
      this.action_result = null;
      this.action_feedback = null;
    }
    else {
      if (initObj.hasOwnProperty('action_goal')) {
        this.action_goal = initObj.action_goal
      }
      else {
        this.action_goal = new PlatformGoalActionGoal();
      }
      if (initObj.hasOwnProperty('action_result')) {
        this.action_result = initObj.action_result
      }
      else {
        this.action_result = new PlatformGoalActionResult();
      }
      if (initObj.hasOwnProperty('action_feedback')) {
        this.action_feedback = initObj.action_feedback
      }
      else {
        this.action_feedback = new PlatformGoalActionFeedback();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PlatformGoalAction
    // Serialize message field [action_goal]
    bufferOffset = PlatformGoalActionGoal.serialize(obj.action_goal, buffer, bufferOffset);
    // Serialize message field [action_result]
    bufferOffset = PlatformGoalActionResult.serialize(obj.action_result, buffer, bufferOffset);
    // Serialize message field [action_feedback]
    bufferOffset = PlatformGoalActionFeedback.serialize(obj.action_feedback, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PlatformGoalAction
    let len;
    let data = new PlatformGoalAction(null);
    // Deserialize message field [action_goal]
    data.action_goal = PlatformGoalActionGoal.deserialize(buffer, bufferOffset);
    // Deserialize message field [action_result]
    data.action_result = PlatformGoalActionResult.deserialize(buffer, bufferOffset);
    // Deserialize message field [action_feedback]
    data.action_feedback = PlatformGoalActionFeedback.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += PlatformGoalActionGoal.getMessageSize(object.action_goal);
    length += PlatformGoalActionResult.getMessageSize(object.action_result);
    length += PlatformGoalActionFeedback.getMessageSize(object.action_feedback);
    return length;
  }

  static datatype() {
    // Returns string type for a message object
    return 'cares_msgs/PlatformGoalAction';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '23bfd874cd02ae60206f04410144db5f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
    
    PlatformGoalActionGoal action_goal
    PlatformGoalActionResult action_result
    PlatformGoalActionFeedback action_feedback
    
    ================================================================================
    MSG: cares_msgs/PlatformGoalActionGoal
    # ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
    
    Header header
    actionlib_msgs/GoalID goal_id
    PlatformGoalGoal goal
    
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    string frame_id
    
    ================================================================================
    MSG: actionlib_msgs/GoalID
    # The stamp should store the time at which this goal was requested.
    # It is used by an action server when it tries to preempt all
    # goals that were requested before a certain time
    time stamp
    
    # The id provides a way to associate feedback and
    # result message with specific goal requests. The id
    # specified must be unique.
    string id
    
    
    ================================================================================
    MSG: cares_msgs/PlatformGoalGoal
    # ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
    #goal definition
    
    # Desired pose - frame_id sets which world space to move in
    geometry_msgs/PoseStamped target_pose
    
    # End Effector ID to move to target_pose
    std_msgs/String link_id
    
    # Arm command
    # Enumeration 0 - 255
    uint8 STOP      = 0
    uint8 MOVE      = 1
    uint8 RESET     = 2
    uint8 ACTUATE   = 3
    uint8 command
    
    ================================================================================
    MSG: geometry_msgs/PoseStamped
    # A Pose with reference coordinate frame and timestamp
    Header header
    Pose pose
    
    ================================================================================
    MSG: geometry_msgs/Pose
    # A representation of pose in free space, composed of position and orientation. 
    Point position
    Quaternion orientation
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    ================================================================================
    MSG: geometry_msgs/Quaternion
    # This represents an orientation in free space in quaternion form.
    
    float64 x
    float64 y
    float64 z
    float64 w
    
    ================================================================================
    MSG: std_msgs/String
    string data
    
    ================================================================================
    MSG: cares_msgs/PlatformGoalActionResult
    # ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
    
    Header header
    actionlib_msgs/GoalStatus status
    PlatformGoalResult result
    
    ================================================================================
    MSG: actionlib_msgs/GoalStatus
    GoalID goal_id
    uint8 status
    uint8 PENDING         = 0   # The goal has yet to be processed by the action server
    uint8 ACTIVE          = 1   # The goal is currently being processed by the action server
    uint8 PREEMPTED       = 2   # The goal received a cancel request after it started executing
                                #   and has since completed its execution (Terminal State)
    uint8 SUCCEEDED       = 3   # The goal was achieved successfully by the action server (Terminal State)
    uint8 ABORTED         = 4   # The goal was aborted during execution by the action server due
                                #    to some failure (Terminal State)
    uint8 REJECTED        = 5   # The goal was rejected by the action server without being processed,
                                #    because the goal was unattainable or invalid (Terminal State)
    uint8 PREEMPTING      = 6   # The goal received a cancel request after it started executing
                                #    and has not yet completed execution
    uint8 RECALLING       = 7   # The goal received a cancel request before it started executing,
                                #    but the action server has not yet confirmed that the goal is canceled
    uint8 RECALLED        = 8   # The goal received a cancel request before it started executing
                                #    and was successfully cancelled (Terminal State)
    uint8 LOST            = 9   # An action client can determine that a goal is LOST. This should not be
                                #    sent over the wire by an action server
    
    #Allow for the user to associate a string with GoalStatus for debugging
    string text
    
    
    ================================================================================
    MSG: cares_msgs/PlatformGoalResult
    # ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
    #result definition
    uint8 status
    
    ================================================================================
    MSG: cares_msgs/PlatformGoalActionFeedback
    # ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
    
    Header header
    actionlib_msgs/GoalStatus status
    PlatformGoalFeedback feedback
    
    ================================================================================
    MSG: cares_msgs/PlatformGoalFeedback
    # ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
    #feedback
    
    # Enumeration 0 - 255
    uint8 status
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PlatformGoalAction(null);
    if (msg.action_goal !== undefined) {
      resolved.action_goal = PlatformGoalActionGoal.Resolve(msg.action_goal)
    }
    else {
      resolved.action_goal = new PlatformGoalActionGoal()
    }

    if (msg.action_result !== undefined) {
      resolved.action_result = PlatformGoalActionResult.Resolve(msg.action_result)
    }
    else {
      resolved.action_result = new PlatformGoalActionResult()
    }

    if (msg.action_feedback !== undefined) {
      resolved.action_feedback = PlatformGoalActionFeedback.Resolve(msg.action_feedback)
    }
    else {
      resolved.action_feedback = new PlatformGoalActionFeedback()
    }

    return resolved;
    }
};

module.exports = PlatformGoalAction;
