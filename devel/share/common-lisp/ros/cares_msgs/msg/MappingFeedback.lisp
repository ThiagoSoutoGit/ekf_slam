; Auto-generated. Do not edit!


(cl:in-package cares_msgs-msg)


;//! \htmlinclude MappingFeedback.msg.html

(cl:defclass <MappingFeedback> (roslisp-msg-protocol:ros-message)
  ((status
    :reader status
    :initarg :status
    :type cl:fixnum
    :initform 0)
   (scanning_feedback
    :reader scanning_feedback
    :initarg :scanning_feedback
    :type (cl:vector cares_msgs-msg:ScanningFeedback)
   :initform (cl:make-array 0 :element-type 'cares_msgs-msg:ScanningFeedback :initial-element (cl:make-instance 'cares_msgs-msg:ScanningFeedback)))
   (metric_feedback
    :reader metric_feedback
    :initarg :metric_feedback
    :type (cl:vector cares_msgs-msg:MetricExtractionFeedback)
   :initform (cl:make-array 0 :element-type 'cares_msgs-msg:MetricExtractionFeedback :initial-element (cl:make-instance 'cares_msgs-msg:MetricExtractionFeedback))))
)

(cl:defclass MappingFeedback (<MappingFeedback>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MappingFeedback>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MappingFeedback)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cares_msgs-msg:<MappingFeedback> is deprecated: use cares_msgs-msg:MappingFeedback instead.")))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <MappingFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cares_msgs-msg:status-val is deprecated.  Use cares_msgs-msg:status instead.")
  (status m))

(cl:ensure-generic-function 'scanning_feedback-val :lambda-list '(m))
(cl:defmethod scanning_feedback-val ((m <MappingFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cares_msgs-msg:scanning_feedback-val is deprecated.  Use cares_msgs-msg:scanning_feedback instead.")
  (scanning_feedback m))

(cl:ensure-generic-function 'metric_feedback-val :lambda-list '(m))
(cl:defmethod metric_feedback-val ((m <MappingFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cares_msgs-msg:metric_feedback-val is deprecated.  Use cares_msgs-msg:metric_feedback instead.")
  (metric_feedback m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<MappingFeedback>)))
    "Constants for message type '<MappingFeedback>"
  '((:INIT . 0)
    (:SCANNING . 1)
    (:EXTRACTING . 2)
    (:ACTUATING . 3)
    (:STOPPING . 4))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'MappingFeedback)))
    "Constants for message type 'MappingFeedback"
  '((:INIT . 0)
    (:SCANNING . 1)
    (:EXTRACTING . 2)
    (:ACTUATING . 3)
    (:STOPPING . 4))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MappingFeedback>) ostream)
  "Serializes a message object of type '<MappingFeedback>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'status)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'scanning_feedback))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'scanning_feedback))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'metric_feedback))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'metric_feedback))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MappingFeedback>) istream)
  "Deserializes a message object of type '<MappingFeedback>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'status)) (cl:read-byte istream))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'scanning_feedback) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'scanning_feedback)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'cares_msgs-msg:ScanningFeedback))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'metric_feedback) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'metric_feedback)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'cares_msgs-msg:MetricExtractionFeedback))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MappingFeedback>)))
  "Returns string type for a message object of type '<MappingFeedback>"
  "cares_msgs/MappingFeedback")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MappingFeedback)))
  "Returns string type for a message object of type 'MappingFeedback"
  "cares_msgs/MappingFeedback")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MappingFeedback>)))
  "Returns md5sum for a message object of type '<MappingFeedback>"
  "91e330b58af41fd0b42e151e23f9a3da")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MappingFeedback)))
  "Returns md5sum for a message object of type 'MappingFeedback"
  "91e330b58af41fd0b42e151e23f9a3da")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MappingFeedback>)))
  "Returns full string definition for message of type '<MappingFeedback>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#feedback~%~%#Enumeration~%uint8 INIT       = 0~%uint8 SCANNING   = 1~%uint8 EXTRACTING = 2~%uint8 ACTUATING  = 3~%uint8 STOPPING   = 4~%#Task status~%uint8 status~%~%cares_msgs/ScanningFeedback[] scanning_feedback~%cares_msgs/MetricExtractionFeedback[] metric_feedback~%~%================================================================================~%MSG: cares_msgs/ScanningFeedback~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#feedback~%~%#Enumeration~%uint8 INIT       = 0~%uint8 MARKER     = 1~%uint8 CAPTURING  = 2~%uint8 ERROR      = 3~%#Task status~%uint8 status~%~%#Enumeration~%uint8 MOVING  = 4~%uint8 IDLE    = 5~%uint8 arm_status~%~%uint8 count~%uint8 total~%~%================================================================================~%MSG: cares_msgs/MetricExtractionFeedback~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#feedback definition~%#Enumeration~%uint8 CAPTURING = 0~%uint8 MEASURING = 1~%#Task status~%uint8 status~%~%uint8 processed~%uint8 queued~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MappingFeedback)))
  "Returns full string definition for message of type 'MappingFeedback"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#feedback~%~%#Enumeration~%uint8 INIT       = 0~%uint8 SCANNING   = 1~%uint8 EXTRACTING = 2~%uint8 ACTUATING  = 3~%uint8 STOPPING   = 4~%#Task status~%uint8 status~%~%cares_msgs/ScanningFeedback[] scanning_feedback~%cares_msgs/MetricExtractionFeedback[] metric_feedback~%~%================================================================================~%MSG: cares_msgs/ScanningFeedback~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#feedback~%~%#Enumeration~%uint8 INIT       = 0~%uint8 MARKER     = 1~%uint8 CAPTURING  = 2~%uint8 ERROR      = 3~%#Task status~%uint8 status~%~%#Enumeration~%uint8 MOVING  = 4~%uint8 IDLE    = 5~%uint8 arm_status~%~%uint8 count~%uint8 total~%~%================================================================================~%MSG: cares_msgs/MetricExtractionFeedback~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#feedback definition~%#Enumeration~%uint8 CAPTURING = 0~%uint8 MEASURING = 1~%#Task status~%uint8 status~%~%uint8 processed~%uint8 queued~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MappingFeedback>))
  (cl:+ 0
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'scanning_feedback) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'metric_feedback) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MappingFeedback>))
  "Converts a ROS message object to a list"
  (cl:list 'MappingFeedback
    (cl:cons ':status (status msg))
    (cl:cons ':scanning_feedback (scanning_feedback msg))
    (cl:cons ':metric_feedback (metric_feedback msg))
))
