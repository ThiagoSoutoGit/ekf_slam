;; Auto-generated. Do not edit!


(when (boundp 'cares_msgs::MetricExtractionFeedback)
  (if (not (find-package "CARES_MSGS"))
    (make-package "CARES_MSGS"))
  (shadow 'MetricExtractionFeedback (find-package "CARES_MSGS")))
(unless (find-package "CARES_MSGS::METRICEXTRACTIONFEEDBACK")
  (make-package "CARES_MSGS::METRICEXTRACTIONFEEDBACK"))

(in-package "ROS")
;;//! \htmlinclude MetricExtractionFeedback.msg.html


(intern "*CAPTURING*" (find-package "CARES_MSGS::METRICEXTRACTIONFEEDBACK"))
(shadow '*CAPTURING* (find-package "CARES_MSGS::METRICEXTRACTIONFEEDBACK"))
(defconstant cares_msgs::MetricExtractionFeedback::*CAPTURING* 0)
(intern "*MEASURING*" (find-package "CARES_MSGS::METRICEXTRACTIONFEEDBACK"))
(shadow '*MEASURING* (find-package "CARES_MSGS::METRICEXTRACTIONFEEDBACK"))
(defconstant cares_msgs::MetricExtractionFeedback::*MEASURING* 1)

(defun cares_msgs::MetricExtractionFeedback-to-symbol (const)
  (cond
        ((= const 0) 'cares_msgs::MetricExtractionFeedback::*CAPTURING*)
        ((= const 1) 'cares_msgs::MetricExtractionFeedback::*MEASURING*)
        (t nil)))

(defclass cares_msgs::MetricExtractionFeedback
  :super ros::object
  :slots (_status _processed _queued ))

(defmethod cares_msgs::MetricExtractionFeedback
  (:init
   (&key
    ((:status __status) 0)
    ((:processed __processed) 0)
    ((:queued __queued) 0)
    )
   (send-super :init)
   (setq _status (round __status))
   (setq _processed (round __processed))
   (setq _queued (round __queued))
   self)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:processed
   (&optional __processed)
   (if __processed (setq _processed __processed)) _processed)
  (:queued
   (&optional __queued)
   (if __queued (setq _queued __queued)) _queued)
  (:serialization-length
   ()
   (+
    ;; uint8 _status
    1
    ;; uint8 _processed
    1
    ;; uint8 _queued
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _status
       (write-byte _status s)
     ;; uint8 _processed
       (write-byte _processed s)
     ;; uint8 _queued
       (write-byte _queued s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _status
     (setq _status (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _processed
     (setq _processed (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _queued
     (setq _queued (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get cares_msgs::MetricExtractionFeedback :md5sum-) "6956d43529b4afb6fc43a9680d94c5b4")
(setf (get cares_msgs::MetricExtractionFeedback :datatype-) "cares_msgs/MetricExtractionFeedback")
(setf (get cares_msgs::MetricExtractionFeedback :definition-)
      "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
#feedback definition
#Enumeration
uint8 CAPTURING = 0
uint8 MEASURING = 1
#Task status
uint8 status

uint8 processed
uint8 queued

")



(provide :cares_msgs/MetricExtractionFeedback "6956d43529b4afb6fc43a9680d94c5b4")

