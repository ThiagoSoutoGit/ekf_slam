;; Auto-generated. Do not edit!


(when (boundp 'cares_msgs::NavigationResult)
  (if (not (find-package "CARES_MSGS"))
    (make-package "CARES_MSGS"))
  (shadow 'NavigationResult (find-package "CARES_MSGS")))
(unless (find-package "CARES_MSGS::NAVIGATIONRESULT")
  (make-package "CARES_MSGS::NAVIGATIONRESULT"))

(in-package "ROS")
;;//! \htmlinclude NavigationResult.msg.html


(defclass cares_msgs::NavigationResult
  :super ros::object
  :slots (_status ))

(defmethod cares_msgs::NavigationResult
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

(setf (get cares_msgs::NavigationResult :md5sum-) "284aa12dd9e9e760802ac9f38036ea5e")
(setf (get cares_msgs::NavigationResult :datatype-) "cares_msgs/NavigationResult")
(setf (get cares_msgs::NavigationResult :definition-)
      "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
#result definition
uint8 status

")



(provide :cares_msgs/NavigationResult "284aa12dd9e9e760802ac9f38036ea5e")

