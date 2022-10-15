; Auto-generated. Do not edit!


(cl:in-package cares_msgs-msg)


;//! \htmlinclude ScanningGoal.msg.html

(cl:defclass <ScanningGoal> (roslisp-msg-protocol:ros-message)
  ((command
    :reader command
    :initarg :command
    :type cl:fixnum
    :initform 0)
   (init_pose
    :reader init_pose
    :initarg :init_pose
    :type geometry_msgs-msg:PoseStamped
    :initform (cl:make-instance 'geometry_msgs-msg:PoseStamped))
   (planning_link
    :reader planning_link
    :initarg :planning_link
    :type std_msgs-msg:String
    :initform (cl:make-instance 'std_msgs-msg:String))
   (world_link
    :reader world_link
    :initarg :world_link
    :type std_msgs-msg:String
    :initform (cl:make-instance 'std_msgs-msg:String))
   (get_marker
    :reader get_marker
    :initarg :get_marker
    :type std_msgs-msg:Bool
    :initform (cl:make-instance 'std_msgs-msg:Bool))
   (path_id
    :reader path_id
    :initarg :path_id
    :type cl:fixnum
    :initform 0)
   (file_path
    :reader file_path
    :initarg :file_path
    :type std_msgs-msg:String
    :initform (cl:make-instance 'std_msgs-msg:String)))
)

(cl:defclass ScanningGoal (<ScanningGoal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ScanningGoal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ScanningGoal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cares_msgs-msg:<ScanningGoal> is deprecated: use cares_msgs-msg:ScanningGoal instead.")))

(cl:ensure-generic-function 'command-val :lambda-list '(m))
(cl:defmethod command-val ((m <ScanningGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cares_msgs-msg:command-val is deprecated.  Use cares_msgs-msg:command instead.")
  (command m))

(cl:ensure-generic-function 'init_pose-val :lambda-list '(m))
(cl:defmethod init_pose-val ((m <ScanningGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cares_msgs-msg:init_pose-val is deprecated.  Use cares_msgs-msg:init_pose instead.")
  (init_pose m))

(cl:ensure-generic-function 'planning_link-val :lambda-list '(m))
(cl:defmethod planning_link-val ((m <ScanningGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cares_msgs-msg:planning_link-val is deprecated.  Use cares_msgs-msg:planning_link instead.")
  (planning_link m))

(cl:ensure-generic-function 'world_link-val :lambda-list '(m))
(cl:defmethod world_link-val ((m <ScanningGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cares_msgs-msg:world_link-val is deprecated.  Use cares_msgs-msg:world_link instead.")
  (world_link m))

(cl:ensure-generic-function 'get_marker-val :lambda-list '(m))
(cl:defmethod get_marker-val ((m <ScanningGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cares_msgs-msg:get_marker-val is deprecated.  Use cares_msgs-msg:get_marker instead.")
  (get_marker m))

(cl:ensure-generic-function 'path_id-val :lambda-list '(m))
(cl:defmethod path_id-val ((m <ScanningGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cares_msgs-msg:path_id-val is deprecated.  Use cares_msgs-msg:path_id instead.")
  (path_id m))

(cl:ensure-generic-function 'file_path-val :lambda-list '(m))
(cl:defmethod file_path-val ((m <ScanningGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cares_msgs-msg:file_path-val is deprecated.  Use cares_msgs-msg:file_path instead.")
  (file_path m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<ScanningGoal>)))
    "Constants for message type '<ScanningGoal>"
  '((:STOP . 0)
    (:MAP . 1)
    (:MOVE . 2)
    (:ACTUATE . 3))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'ScanningGoal)))
    "Constants for message type 'ScanningGoal"
  '((:STOP . 0)
    (:MAP . 1)
    (:MOVE . 2)
    (:ACTUATE . 3))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ScanningGoal>) ostream)
  "Serializes a message object of type '<ScanningGoal>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'command)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'init_pose) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'planning_link) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'world_link) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'get_marker) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'path_id)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'file_path) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ScanningGoal>) istream)
  "Deserializes a message object of type '<ScanningGoal>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'command)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'init_pose) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'planning_link) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'world_link) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'get_marker) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'path_id)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'file_path) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ScanningGoal>)))
  "Returns string type for a message object of type '<ScanningGoal>"
  "cares_msgs/ScanningGoal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ScanningGoal)))
  "Returns string type for a message object of type 'ScanningGoal"
  "cares_msgs/ScanningGoal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ScanningGoal>)))
  "Returns md5sum for a message object of type '<ScanningGoal>"
  "cae2bb73f288441970bca461bed96dca")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ScanningGoal)))
  "Returns md5sum for a message object of type 'ScanningGoal"
  "cae2bb73f288441970bca461bed96dca")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ScanningGoal>)))
  "Returns full string definition for message of type '<ScanningGoal>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#goal definition~%# Arm Command Enumeration~%uint8 STOP    = 0~%uint8 MAP     = 1~%uint8 MOVE    = 2 # Move Arm to Position~%uint8 ACTUATE = 3 # e.g. prune/pick/thin~%~%# Arm command~%uint8 command~%~%# Initial Pose to move arm too~%geometry_msgs/PoseStamped init_pose~%~%# Planning Link~%std_msgs/String planning_link~%~%# World Link~%std_msgs/String world_link~%~%# To seek out alignment marker or not before scanning~%std_msgs/Bool get_marker~%~%# Path ID from path factory to generate scanning path~%uint8 path_id~%~%# Path to save data too~%std_msgs/String file_path~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%================================================================================~%MSG: std_msgs/Bool~%bool data~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ScanningGoal)))
  "Returns full string definition for message of type 'ScanningGoal"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#goal definition~%# Arm Command Enumeration~%uint8 STOP    = 0~%uint8 MAP     = 1~%uint8 MOVE    = 2 # Move Arm to Position~%uint8 ACTUATE = 3 # e.g. prune/pick/thin~%~%# Arm command~%uint8 command~%~%# Initial Pose to move arm too~%geometry_msgs/PoseStamped init_pose~%~%# Planning Link~%std_msgs/String planning_link~%~%# World Link~%std_msgs/String world_link~%~%# To seek out alignment marker or not before scanning~%std_msgs/Bool get_marker~%~%# Path ID from path factory to generate scanning path~%uint8 path_id~%~%# Path to save data too~%std_msgs/String file_path~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%================================================================================~%MSG: std_msgs/Bool~%bool data~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ScanningGoal>))
  (cl:+ 0
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'init_pose))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'planning_link))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'world_link))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'get_marker))
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'file_path))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ScanningGoal>))
  "Converts a ROS message object to a list"
  (cl:list 'ScanningGoal
    (cl:cons ':command (command msg))
    (cl:cons ':init_pose (init_pose msg))
    (cl:cons ':planning_link (planning_link msg))
    (cl:cons ':world_link (world_link msg))
    (cl:cons ':get_marker (get_marker msg))
    (cl:cons ':path_id (path_id msg))
    (cl:cons ':file_path (file_path msg))
))
