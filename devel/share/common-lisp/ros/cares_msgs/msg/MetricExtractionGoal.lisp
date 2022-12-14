; Auto-generated. Do not edit!


(cl:in-package cares_msgs-msg)


;//! \htmlinclude MetricExtractionGoal.msg.html

(cl:defclass <MetricExtractionGoal> (roslisp-msg-protocol:ros-message)
  ((command
    :reader command
    :initarg :command
    :type cl:fixnum
    :initform 0)
   (file_path
    :reader file_path
    :initarg :file_path
    :type std_msgs-msg:String
    :initform (cl:make-instance 'std_msgs-msg:String)))
)

(cl:defclass MetricExtractionGoal (<MetricExtractionGoal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MetricExtractionGoal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MetricExtractionGoal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cares_msgs-msg:<MetricExtractionGoal> is deprecated: use cares_msgs-msg:MetricExtractionGoal instead.")))

(cl:ensure-generic-function 'command-val :lambda-list '(m))
(cl:defmethod command-val ((m <MetricExtractionGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cares_msgs-msg:command-val is deprecated.  Use cares_msgs-msg:command instead.")
  (command m))

(cl:ensure-generic-function 'file_path-val :lambda-list '(m))
(cl:defmethod file_path-val ((m <MetricExtractionGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cares_msgs-msg:file_path-val is deprecated.  Use cares_msgs-msg:file_path instead.")
  (file_path m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<MetricExtractionGoal>)))
    "Constants for message type '<MetricExtractionGoal>"
  '((:RESET . 0)
    (:CAPTURE . 1)
    (:MEASURE . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'MetricExtractionGoal)))
    "Constants for message type 'MetricExtractionGoal"
  '((:RESET . 0)
    (:CAPTURE . 1)
    (:MEASURE . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MetricExtractionGoal>) ostream)
  "Serializes a message object of type '<MetricExtractionGoal>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'command)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'file_path) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MetricExtractionGoal>) istream)
  "Deserializes a message object of type '<MetricExtractionGoal>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'command)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'file_path) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MetricExtractionGoal>)))
  "Returns string type for a message object of type '<MetricExtractionGoal>"
  "cares_msgs/MetricExtractionGoal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MetricExtractionGoal)))
  "Returns string type for a message object of type 'MetricExtractionGoal"
  "cares_msgs/MetricExtractionGoal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MetricExtractionGoal>)))
  "Returns md5sum for a message object of type '<MetricExtractionGoal>"
  "f545d4613a4081da8300fe4c843f5db4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MetricExtractionGoal)))
  "Returns md5sum for a message object of type 'MetricExtractionGoal"
  "f545d4613a4081da8300fe4c843f5db4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MetricExtractionGoal>)))
  "Returns full string definition for message of type '<MetricExtractionGoal>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#goal definition~%# Arm Command Enumeration~%uint8 RESET    = 0~%uint8 CAPTURE  = 1~%uint8 MEASURE  = 2~%~%# Arm command~%uint8 command~%~%# Path to save data too~%std_msgs/String file_path~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MetricExtractionGoal)))
  "Returns full string definition for message of type 'MetricExtractionGoal"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#goal definition~%# Arm Command Enumeration~%uint8 RESET    = 0~%uint8 CAPTURE  = 1~%uint8 MEASURE  = 2~%~%# Arm command~%uint8 command~%~%# Path to save data too~%std_msgs/String file_path~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MetricExtractionGoal>))
  (cl:+ 0
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'file_path))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MetricExtractionGoal>))
  "Converts a ROS message object to a list"
  (cl:list 'MetricExtractionGoal
    (cl:cons ':command (command msg))
    (cl:cons ':file_path (file_path msg))
))
