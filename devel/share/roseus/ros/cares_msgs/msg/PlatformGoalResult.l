;; Auto-generated. Do not edit!


(when (boundp 'cares_msgs::PlatformGoalResult)
  (if (not (find-package "CARES_MSGS"))
    (make-package "CARES_MSGS"))
  (shadow 'PlatformGoalResult (find-package "CARES_MSGS")))
(unless (find-package "CARES_MSGS::PLATFORMGOALRESULT")
  (make-package "CARES_MSGS::PLATFORMGOALRESULT"))

(in-package "ROS")
;;//! \htmlinclude PlatformGoalResult.msg.html


(defclass cares_msgs::PlatformGoalResult
  :super ros::object
  :slots (_status ))

(defmethod cares_msgs::PlatformGoalResult
  (:init
   (&key
    ((:status __status) 0)
    )
   (send-super :init)
   (setq _status (round __status))
   self)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:serialization-length
   ()
   (+
    ;; uint8 _status
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _status
       (write-byte _status s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _status
     (setq _status (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get cares_msgs::PlatformGoalResult :md5sum-) "284aa12dd9e9e760802ac9f38036ea5e")
(setf (get cares_msgs::PlatformGoalResult :datatype-) "cares_msgs/PlatformGoalResult")
(setf (get cares_msgs::PlatformGoalResult :definition-)
      "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
#result definition
uint8 status

")



(provide :cares_msgs/PlatformGoalResult "284aa12dd9e9e760802ac9f38036ea5e")


