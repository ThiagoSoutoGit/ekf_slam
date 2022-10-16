;; Auto-generated. Do not edit!


(when (boundp 'ekf_slam::LandmarksMap)
  (if (not (find-package "EKF_SLAM"))
    (make-package "EKF_SLAM"))
  (shadow 'LandmarksMap (find-package "EKF_SLAM")))
(unless (find-package "EKF_SLAM::LANDMARKSMAP")
  (make-package "EKF_SLAM::LANDMARKSMAP"))

(in-package "ROS")
;;//! \htmlinclude LandmarksMap.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass ekf_slam::LandmarksMap
  :super ros::object
  :slots (_header _x _y _size _id _map ))

(defmethod ekf_slam::LandmarksMap
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:x __x) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:y __y) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:size __size) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:id __id) (make-array 0 :initial-element 0 :element-type :integer))
    ((:map __map) (make-array 0 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _header __header)
   (setq _x __x)
   (setq _y __y)
   (setq _size __size)
   (setq _id __id)
   (setq _map __map)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:size
   (&optional __size)
   (if __size (setq _size __size)) _size)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:map
   (&optional __map)
   (if __map (setq _map __map)) _map)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float64[] _x
    (* 8    (length _x)) 4
    ;; float64[] _y
    (* 8    (length _y)) 4
    ;; float64[] _size
    (* 8    (length _size)) 4
    ;; int64[] _id
    (* 8    (length _id)) 4
    ;; int64[] _map
    (* 8    (length _map)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float64[] _x
     (write-long (length _x) s)
     (dotimes (i (length _x))
       (sys::poke (elt _x i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _y
     (write-long (length _y) s)
     (dotimes (i (length _y))
       (sys::poke (elt _y i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _size
     (write-long (length _size) s)
     (dotimes (i (length _size))
       (sys::poke (elt _size i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; int64[] _id
     (write-long (length _id) s)
     (dotimes (i (length _id))
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke (elt _id i) (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class (elt _id i)) (= (length ((elt _id i) . bv)) 2)) ;; bignum
              (write-long (ash (elt ((elt _id i) . bv) 0) 0) s)
              (write-long (ash (elt ((elt _id i) . bv) 1) -1) s))
             ((and (class (elt _id i)) (= (length ((elt _id i) . bv)) 1)) ;; big1
              (write-long (elt ((elt _id i) . bv) 0) s)
              (write-long (if (>= (elt _id i) 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long (elt _id i) s)(write-long (if (>= (elt _id i) 0) 0 #xffffffff) s)))
       )
     ;; int64[] _map
     (write-long (length _map) s)
     (dotimes (i (length _map))
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke (elt _map i) (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class (elt _map i)) (= (length ((elt _map i) . bv)) 2)) ;; bignum
              (write-long (ash (elt ((elt _map i) . bv) 0) 0) s)
              (write-long (ash (elt ((elt _map i) . bv) 1) -1) s))
             ((and (class (elt _map i)) (= (length ((elt _map i) . bv)) 1)) ;; big1
              (write-long (elt ((elt _map i) . bv) 0) s)
              (write-long (if (>= (elt _map i) 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long (elt _map i) s)(write-long (if (>= (elt _map i) 0) 0 #xffffffff) s)))
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float64[] _x
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _x (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _x i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _y
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _y (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _y i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _size
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _size (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _size i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; int64[] _id
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _id (instantiate integer-vector n))
     (dotimes (i n)
#+(or :alpha :irix6 :x86_64)
      (setf (elt _id i) (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf (elt _id i) (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
     ))
   ;; int64[] _map
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _map (instantiate integer-vector n))
     (dotimes (i n)
#+(or :alpha :irix6 :x86_64)
      (setf (elt _map i) (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf (elt _map i) (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
     ))
   ;;
   self)
  )

(setf (get ekf_slam::LandmarksMap :md5sum-) "be59b8991d90b2ec01f312b7f555e888")
(setf (get ekf_slam::LandmarksMap :datatype-) "ekf_slam/LandmarksMap")
(setf (get ekf_slam::LandmarksMap :definition-)
      "std_msgs/Header header
float64[] x # a list of x coordinate of circle center x
float64[] y # a list of y coordinate of circle center y
float64[] size
int64[] id # id of this landmark (data association)
int64[] map # type of map
================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

")



(provide :ekf_slam/LandmarksMap "be59b8991d90b2ec01f312b7f555e888")


