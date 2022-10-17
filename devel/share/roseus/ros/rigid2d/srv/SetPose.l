;; Auto-generated. Do not edit!


(when (boundp 'rigid2d::SetPose)
  (if (not (find-package "RIGID2D"))
    (make-package "RIGID2D"))
  (shadow 'SetPose (find-package "RIGID2D")))
(unless (find-package "RIGID2D::SETPOSE")
  (make-package "RIGID2D::SETPOSE"))
(unless (find-package "RIGID2D::SETPOSEREQUEST")
  (make-package "RIGID2D::SETPOSEREQUEST"))
(unless (find-package "RIGID2D::SETPOSERESPONSE")
  (make-package "RIGID2D::SETPOSERESPONSE"))

(in-package "ROS")





(defclass rigid2d::SetPoseRequest
  :super ros::object
  :slots (_x _y _theta ))

(defmethod rigid2d::SetPoseRequest
  (:init
   (&key
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    ((:theta __theta) 0.0)
    )
   (send-super :init)
   (setq _x (float __x))
   (setq _y (float __y))
   (setq _theta (float __theta))
   self)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:theta
   (&optional __theta)
   (if __theta (setq _theta __theta)) _theta)
  (:serialization-length
   ()
   (+
    ;; float64 _x
    8
    ;; float64 _y
    8
    ;; float64 _theta
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _x
       (sys::poke _x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _y
       (sys::poke _y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _theta
       (sys::poke _theta (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _x
     (setq _x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _y
     (setq _y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _theta
     (setq _theta (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass rigid2d::SetPoseResponse
  :super ros::object
  :slots ())

(defmethod rigid2d::SetPoseResponse
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass rigid2d::SetPose
  :super ros::object
  :slots ())

(setf (get rigid2d::SetPose :md5sum-) "938fa65709584ad8e77d238529be13b8")
(setf (get rigid2d::SetPose :datatype-) "rigid2d/SetPose")
(setf (get rigid2d::SetPose :request) rigid2d::SetPoseRequest)
(setf (get rigid2d::SetPose :response) rigid2d::SetPoseResponse)

(defmethod rigid2d::SetPoseRequest
  (:response () (instance rigid2d::SetPoseResponse :init)))

(setf (get rigid2d::SetPoseRequest :md5sum-) "938fa65709584ad8e77d238529be13b8")
(setf (get rigid2d::SetPoseRequest :datatype-) "rigid2d/SetPoseRequest")
(setf (get rigid2d::SetPoseRequest :definition-)
      "float64 x
float64 y
float64 theta
---
")

(setf (get rigid2d::SetPoseResponse :md5sum-) "938fa65709584ad8e77d238529be13b8")
(setf (get rigid2d::SetPoseResponse :datatype-) "rigid2d/SetPoseResponse")
(setf (get rigid2d::SetPoseResponse :definition-)
      "float64 x
float64 y
float64 theta
---
")



(provide :rigid2d/SetPose "938fa65709584ad8e77d238529be13b8")


