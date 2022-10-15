; Auto-generated. Do not edit!


(cl:in-package cares_msgs-msg)


;//! \htmlinclude MetricExtractionAction.msg.html

(cl:defclass <MetricExtractionAction> (roslisp-msg-protocol:ros-message)
  ((action_goal
    :reader action_goal
    :initarg :action_goal
    :type cares_msgs-msg:MetricExtractionActionGoal
    :initform (cl:make-instance 'cares_msgs-msg:MetricExtractionActionGoal))
   (action_result
    :reader action_result
    :initarg :action_result
    :type cares_msgs-msg:MetricExtractionActionResult
    :initform (cl:make-instance 'cares_msgs-msg:MetricExtractionActionResult))
   (action_feedback
    :reader action_feedback
    :initarg :action_feedback
    :type cares_msgs-msg:MetricExtractionActionFeedback
    :initform (cl:make-instance 'cares_msgs-msg:MetricExtractionActionFeedback)))
)

(cl:defclass MetricExtractionAction (<MetricExtractionAction>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MetricExtractionAction>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MetricExtractionAction)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cares_msgs-msg:<MetricExtractionAction> is deprecated: use cares_msgs-msg:MetricExtractionAction instead.")))

(cl:ensure-generic-function 'action_goal-val :lambda-list '(m))
(cl:defmethod action_goal-val ((m <MetricExtractionAction>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cares_msgs-msg:action_goal-val is deprecated.  Use cares_msgs-msg:action_goal instead.")
  (action_goal m))

(cl:ensure-generic-function 'action_result-val :lambda-list '(m))
(cl:defmethod action_result-val ((m <MetricExtractionAction>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cares_msgs-msg:action_result-val is deprecated.  Use cares_msgs-msg:action_result instead.")
  (action_result m))

(cl:ensure-generic-function 'action_feedback-val :lambda-list '(m))
(cl:defmethod action_feedback-val ((m <MetricExtractionAction>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cares_msgs-msg:action_feedback-val is deprecated.  Use cares_msgs-msg:action_feedback instead.")
  (action_feedback m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MetricExtractionAction>) ostream)
  "Serializes a message object of type '<MetricExtractionAction>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'action_goal) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'action_result) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'action_feedback) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MetricExtractionAction>) istream)
  "Deserializes a message object of type '<MetricExtractionAction>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'action_goal) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'action_result) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'action_feedback) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MetricExtractionAction>)))
  "Returns string type for a message object of type '<MetricExtractionAction>"
  "cares_msgs/MetricExtractionAction")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MetricExtractionAction)))
  "Returns string type for a message object of type 'MetricExtractionAction"
  "cares_msgs/MetricExtractionAction")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MetricExtractionAction>)))
  "Returns md5sum for a message object of type '<MetricExtractionAction>"
  "9626287af12ff8fa587aad69ed43fb83")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MetricExtractionAction)))
  "Returns md5sum for a message object of type 'MetricExtractionAction"
  "9626287af12ff8fa587aad69ed43fb83")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MetricExtractionAction>)))
  "Returns full string definition for message of type '<MetricExtractionAction>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%MetricExtractionActionGoal action_goal~%MetricExtractionActionResult action_result~%MetricExtractionActionFeedback action_feedback~%~%================================================================================~%MSG: cares_msgs/MetricExtractionActionGoal~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%Header header~%actionlib_msgs/GoalID goal_id~%MetricExtractionGoal goal~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: actionlib_msgs/GoalID~%# The stamp should store the time at which this goal was requested.~%# It is used by an action server when it tries to preempt all~%# goals that were requested before a certain time~%time stamp~%~%# The id provides a way to associate feedback and~%# result message with specific goal requests. The id~%# specified must be unique.~%string id~%~%~%================================================================================~%MSG: cares_msgs/MetricExtractionGoal~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#goal definition~%# Arm Command Enumeration~%uint8 RESET    = 0~%uint8 CAPTURE  = 1~%uint8 MEASURE  = 2~%~%# Arm command~%uint8 command~%~%# Path to save data too~%std_msgs/String file_path~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%================================================================================~%MSG: cares_msgs/MetricExtractionActionResult~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%Header header~%actionlib_msgs/GoalStatus status~%MetricExtractionResult result~%~%================================================================================~%MSG: actionlib_msgs/GoalStatus~%GoalID goal_id~%uint8 status~%uint8 PENDING         = 0   # The goal has yet to be processed by the action server~%uint8 ACTIVE          = 1   # The goal is currently being processed by the action server~%uint8 PREEMPTED       = 2   # The goal received a cancel request after it started executing~%                            #   and has since completed its execution (Terminal State)~%uint8 SUCCEEDED       = 3   # The goal was achieved successfully by the action server (Terminal State)~%uint8 ABORTED         = 4   # The goal was aborted during execution by the action server due~%                            #    to some failure (Terminal State)~%uint8 REJECTED        = 5   # The goal was rejected by the action server without being processed,~%                            #    because the goal was unattainable or invalid (Terminal State)~%uint8 PREEMPTING      = 6   # The goal received a cancel request after it started executing~%                            #    and has not yet completed execution~%uint8 RECALLING       = 7   # The goal received a cancel request before it started executing,~%                            #    but the action server has not yet confirmed that the goal is canceled~%uint8 RECALLED        = 8   # The goal received a cancel request before it started executing~%                            #    and was successfully cancelled (Terminal State)~%uint8 LOST            = 9   # An action client can determine that a goal is LOST. This should not be~%                            #    sent over the wire by an action server~%~%#Allow for the user to associate a string with GoalStatus for debugging~%string text~%~%~%================================================================================~%MSG: cares_msgs/MetricExtractionResult~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#result definition~%uint8 result~%~%================================================================================~%MSG: cares_msgs/MetricExtractionActionFeedback~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%Header header~%actionlib_msgs/GoalStatus status~%MetricExtractionFeedback feedback~%~%================================================================================~%MSG: cares_msgs/MetricExtractionFeedback~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#feedback definition~%#Enumeration~%uint8 CAPTURING = 0~%uint8 MEASURING = 1~%#Task status~%uint8 status~%~%uint8 processed~%uint8 queued~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MetricExtractionAction)))
  "Returns full string definition for message of type 'MetricExtractionAction"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%MetricExtractionActionGoal action_goal~%MetricExtractionActionResult action_result~%MetricExtractionActionFeedback action_feedback~%~%================================================================================~%MSG: cares_msgs/MetricExtractionActionGoal~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%Header header~%actionlib_msgs/GoalID goal_id~%MetricExtractionGoal goal~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: actionlib_msgs/GoalID~%# The stamp should store the time at which this goal was requested.~%# It is used by an action server when it tries to preempt all~%# goals that were requested before a certain time~%time stamp~%~%# The id provides a way to associate feedback and~%# result message with specific goal requests. The id~%# specified must be unique.~%string id~%~%~%================================================================================~%MSG: cares_msgs/MetricExtractionGoal~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#goal definition~%# Arm Command Enumeration~%uint8 RESET    = 0~%uint8 CAPTURE  = 1~%uint8 MEASURE  = 2~%~%# Arm command~%uint8 command~%~%# Path to save data too~%std_msgs/String file_path~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%================================================================================~%MSG: cares_msgs/MetricExtractionActionResult~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%Header header~%actionlib_msgs/GoalStatus status~%MetricExtractionResult result~%~%================================================================================~%MSG: actionlib_msgs/GoalStatus~%GoalID goal_id~%uint8 status~%uint8 PENDING         = 0   # The goal has yet to be processed by the action server~%uint8 ACTIVE          = 1   # The goal is currently being processed by the action server~%uint8 PREEMPTED       = 2   # The goal received a cancel request after it started executing~%                            #   and has since completed its execution (Terminal State)~%uint8 SUCCEEDED       = 3   # The goal was achieved successfully by the action server (Terminal State)~%uint8 ABORTED         = 4   # The goal was aborted during execution by the action server due~%                            #    to some failure (Terminal State)~%uint8 REJECTED        = 5   # The goal was rejected by the action server without being processed,~%                            #    because the goal was unattainable or invalid (Terminal State)~%uint8 PREEMPTING      = 6   # The goal received a cancel request after it started executing~%                            #    and has not yet completed execution~%uint8 RECALLING       = 7   # The goal received a cancel request before it started executing,~%                            #    but the action server has not yet confirmed that the goal is canceled~%uint8 RECALLED        = 8   # The goal received a cancel request before it started executing~%                            #    and was successfully cancelled (Terminal State)~%uint8 LOST            = 9   # An action client can determine that a goal is LOST. This should not be~%                            #    sent over the wire by an action server~%~%#Allow for the user to associate a string with GoalStatus for debugging~%string text~%~%~%================================================================================~%MSG: cares_msgs/MetricExtractionResult~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#result definition~%uint8 result~%~%================================================================================~%MSG: cares_msgs/MetricExtractionActionFeedback~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%Header header~%actionlib_msgs/GoalStatus status~%MetricExtractionFeedback feedback~%~%================================================================================~%MSG: cares_msgs/MetricExtractionFeedback~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#feedback definition~%#Enumeration~%uint8 CAPTURING = 0~%uint8 MEASURING = 1~%#Task status~%uint8 status~%~%uint8 processed~%uint8 queued~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MetricExtractionAction>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'action_goal))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'action_result))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'action_feedback))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MetricExtractionAction>))
  "Converts a ROS message object to a list"
  (cl:list 'MetricExtractionAction
    (cl:cons ':action_goal (action_goal msg))
    (cl:cons ':action_result (action_result msg))
    (cl:cons ':action_feedback (action_feedback msg))
))
