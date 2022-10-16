;; Auto-generated. Do not edit!


(when (boundp 'ekf_slam::Header)
  (if (not (find-package "EKF_SLAM"))
    (make-package "EKF_SLAM"))
  (shadow 'Header (find-package "EKF_SLAM")))
(unless (find-package "EKF_SLAM::HEADER")
  (make-package "EKF_SLAM::HEADER"))

(in-package "ROS")
;;//! \htmlinclude Header.msg.html


(defclass ekf_slam::Header
  :super ros::object
  :slots (_seq _stamp _frame_id ))

(defmethod ekf_slam::Header
  (:init
   (&key
    ((:seq __seq) 0)
    ((:stamp __stamp) (instance ros::time :init))
    ((:frame_id __frame_id) "")
    )
   (send-super :init)
   (setq _seq (round __seq))
   (setq _stamp __stamp)
   (setq _frame_id (string __frame_id))
   self)
  (:seq
   (&optional __seq)
   (if __seq (setq _seq __seq)) _seq)
  (:stamp
   (&optional __stamp)
   (if __stamp (setq _stamp __stamp)) _stamp)
  (:frame_id
   (&optional __frame_id)
   (if __frame_id (setq _frame_id __frame_id)) _frame_id)
  (:serialization-length
   ()
   (+
    ;; uint32 _seq
    4
    ;; time _stamp
    8
    ;; string _frame_id
    4 (length _frame_id)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _seq
       (write-long _seq s)
     ;; time _stamp
       (write-long (send _stamp :sec) s) (write-long (send _stamp :nsec) s)
     ;; string _frame_id
       (write-long (length _frame_id) s) (princ _frame_id s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _seq
     (setq _seq (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; time _stamp
     (send _stamp :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _stamp :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _frame_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _frame_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get ekf_slam::Header :md5sum-) "2176decaecbce78abc3b96ef049fabed")
(setf (get ekf_slam::Header :datatype-) "ekf_slam/Header")
(setf (get ekf_slam::Header :definition-)
      "uint32 seq
time stamp
string frame_id
")



(provide :ekf_slam/Header "2176decaecbce78abc3b96ef049fabed")


