; Auto-generated. Do not edit!


(cl:in-package cares_msgs-msg)


;//! \htmlinclude MetricExtractionFeedback.msg.html

(cl:defclass <MetricExtractionFeedback> (roslisp-msg-protocol:ros-message)
  ((status
    :reader status
    :initarg :status
    :type cl:fixnum
    :initform 0)
   (processed
    :reader processed
    :initarg :processed
    :type cl:fixnum
    :initform 0)
   (queued
    :reader queued
    :initarg :queued
    :type cl:fixnum
    :initform 0))
)

(cl:defclass MetricExtractionFeedback (<MetricExtractionFeedback>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MetricExtractionFeedback>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MetricExtractionFeedback)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cares_msgs-msg:<MetricExtractionFeedback> is deprecated: use cares_msgs-msg:MetricExtractionFeedback instead.")))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <MetricExtractionFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cares_msgs-msg:status-val is deprecated.  Use cares_msgs-msg:status instead.")
  (status m))

(cl:ensure-generic-function 'processed-val :lambda-list '(m))
(cl:defmethod processed-val ((m <MetricExtractionFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cares_msgs-msg:processed-val is deprecated.  Use cares_msgs-msg:processed instead.")
  (processed m))

(cl:ensure-generic-function 'queued-val :lambda-list '(m))
(cl:defmethod queued-val ((m <MetricExtractionFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cares_msgs-msg:queued-val is deprecated.  Use cares_msgs-msg:queued instead.")
  (queued m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<MetricExtractionFeedback>)))
    "Constants for message type '<MetricExtractionFeedback>"
  '((:CAPTURING . 0)
    (:MEASURING . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'MetricExtractionFeedback)))
    "Constants for message type 'MetricExtractionFeedback"
  '((:CAPTURING . 0)
    (:MEASURING . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MetricExtractionFeedback>) ostream)
  "Serializes a message object of type '<MetricExtractionFeedback>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'status)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'processed)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'queued)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MetricExtractionFeedback>) istream)
  "Deserializes a message object of type '<MetricExtractionFeedback>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'status)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'processed)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'queued)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MetricExtractionFeedback>)))
  "Returns string type for a message object of type '<MetricExtractionFeedback>"
  "cares_msgs/MetricExtractionFeedback")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MetricExtractionFeedback)))
  "Returns string type for a message object of type 'MetricExtractionFeedback"
  "cares_msgs/MetricExtractionFeedback")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MetricExtractionFeedback>)))
  "Returns md5sum for a message object of type '<MetricExtractionFeedback>"
  "6956d43529b4afb6fc43a9680d94c5b4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MetricExtractionFeedback)))
  "Returns md5sum for a message object of type 'MetricExtractionFeedback"
  "6956d43529b4afb6fc43a9680d94c5b4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MetricExtractionFeedback>)))
  "Returns full string definition for message of type '<MetricExtractionFeedback>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#feedback definition~%#Enumeration~%uint8 CAPTURING = 0~%uint8 MEASURING = 1~%#Task status~%uint8 status~%~%uint8 processed~%uint8 queued~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MetricExtractionFeedback)))
  "Returns full string definition for message of type 'MetricExtractionFeedback"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#feedback definition~%#Enumeration~%uint8 CAPTURING = 0~%uint8 MEASURING = 1~%#Task status~%uint8 status~%~%uint8 processed~%uint8 queued~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MetricExtractionFeedback>))
  (cl:+ 0
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MetricExtractionFeedback>))
  "Converts a ROS message object to a list"
  (cl:list 'MetricExtractionFeedback
    (cl:cons ':status (status msg))
    (cl:cons ':processed (processed msg))
    (cl:cons ':queued (queued msg))
))
