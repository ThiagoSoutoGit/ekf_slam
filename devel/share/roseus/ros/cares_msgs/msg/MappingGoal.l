;; Auto-generated. Do not edit!


(when (boundp 'cares_msgs::MappingGoal)
  (if (not (find-package "CARES_MSGS"))
    (make-package "CARES_MSGS"))
  (shadow 'MappingGoal (find-package "CARES_MSGS")))
(unless (find-package "CARES_MSGS::MAPPINGGOAL")
  (make-package "CARES_MSGS::MAPPINGGOAL"))

(in-package "ROS")
;;//! \htmlinclude MappingGoal.msg.html


(intern "*STOP*" (find-package "CARES_MSGS::MAPPINGGOAL"))
(shadow '*STOP* (find-package "CARES_MSGS::MAPPINGGOAL"))
(defconstant cares_msgs::MappingGoal::*STOP* 0)
(intern "*MAP*" (find-package "CARES_MSGS::MAPPINGGOAL"))
(shadow '*MAP* (find-package "CARES_MSGS::MAPPINGGOAL"))
(defconstant cares_msgs::MappingGoal::*MAP* 1)
(intern "*ACTUATE*" (find-package "CARES_MSGS::MAPPINGGOAL"))
(shadow '*ACTUATE* (find-package "CARES_MSGS::MAPPINGGOAL"))
(defconstant cares_msgs::MappingGoal::*ACTUATE* 3)

(defun cares_msgs::MappingGoal-to-symbol (const)
  (cond
        ((= const 0) 'cares_msgs::MappingGoal::*STOP*)
        ((= const 1) 'cares_msgs::MappingGoal::*MAP*)
        ((= const 3) 'cares_msgs::MappingGoal::*ACTUATE*)
        (t nil)))

(defclass cares_msgs::MappingGoal
  :super ros::object
  :slots (_command _scanning_goals _metric_goal ))

(defmethod cares_msgs::MappingGoal
  (:init
   (&key
    ((:command __command) 0)
    ((:scanning_goals __scanning_goals) ())
    ((:metric_goal __metric_goal) (instance cares_msgs::MetricExtractionGoal :init))
    )
   (send-super :init)
   (setq _command (round __command))
   (setq _scanning_goals __scanning_goals)
   (setq _metric_goal __metric_goal)
   self)
  (:command
   (&optional __command)
   (if __command (setq _command __command)) _command)
  (:scanning_goals
   (&rest __scanning_goals)
   (if (keywordp (car __scanning_goals))
       (send* _scanning_goals __scanning_goals)
     (progn
       (if __scanning_goals (setq _scanning_goals (car __scanning_goals)))
       _scanning_goals)))
  (:metric_goal
   (&rest __metric_goal)
   (if (keywordp (car __metric_goal))
       (send* _metric_goal __metric_goal)
     (progn
       (if __metric_goal (setq _metric_goal (car __metric_goal)))
       _metric_goal)))
  (:serialization-length
   ()
   (+
    ;; uint8 _command
    1
    ;; cares_msgs/ScanningGoal[] _scanning_goals
    (apply #'+ (send-all _scanning_goals :serialization-length)) 4
    ;; cares_msgs/MetricExtractionGoal _metric_goal
    (send _metric_goal :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _command
       (write-byte _command s)
     ;; cares_msgs/ScanningGoal[] _scanning_goals
     (write-long (length _scanning_goals) s)
     (dolist (elem _scanning_goals)
       (send elem :serialize s)
       )
     ;; cares_msgs/MetricExtractionGoal _metric_goal
       (send _metric_goal :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _command
     (setq _command (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; cares_msgs/ScanningGoal[] _scanning_goals
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _scanning_goals (let (r) (dotimes (i n) (push (instance cares_msgs::ScanningGoal :init) r)) r))
     (dolist (elem- _scanning_goals)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; cares_msgs/MetricExtractionGoal _metric_goal
     (send _metric_goal :deserialize buf ptr-) (incf ptr- (send _metric_goal :serialization-length))
   ;;
   self)
  )

(setf (get cares_msgs::MappingGoal :md5sum-) "f45265005af9eb076d6afb20e6b32c3b")
(setf (get cares_msgs::MappingGoal :datatype-) "cares_msgs/MappingGoal")
(setf (get cares_msgs::MappingGoal :definition-)
      "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
#goal definition
# Mapping Command Enumeration
uint8 STOP    = 0
uint8 MAP     = 1
uint8 ACTUATE = 3 # e.g. prune/pick/thin

uint8 command

cares_msgs/ScanningGoal[] scanning_goals
cares_msgs/MetricExtractionGoal metric_goal

================================================================================
MSG: cares_msgs/ScanningGoal
# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
#goal definition
# Arm Command Enumeration
uint8 STOP    = 0
uint8 MAP     = 1
uint8 MOVE    = 2 # Move Arm to Position
uint8 ACTUATE = 3 # e.g. prune/pick/thin

# Arm command
uint8 command

# Initial Pose to move arm too
geometry_msgs/PoseStamped init_pose

# Planning Link
std_msgs/String planning_link

# World Link
std_msgs/String world_link

# To seek out alignment marker or not before scanning
std_msgs/Bool get_marker

# Path ID from path factory to generate scanning path
uint8 path_id

# Path to save data too
std_msgs/String file_path

================================================================================
MSG: geometry_msgs/PoseStamped
# A Pose with reference coordinate frame and timestamp
Header header
Pose pose

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

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

================================================================================
MSG: std_msgs/String
string data

================================================================================
MSG: std_msgs/Bool
bool data
================================================================================
MSG: cares_msgs/MetricExtractionGoal
# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
#goal definition
# Arm Command Enumeration
uint8 RESET    = 0
uint8 CAPTURE  = 1
uint8 MEASURE  = 2

# Arm command
uint8 command

# Path to save data too
std_msgs/String file_path

")



(provide :cares_msgs/MappingGoal "f45265005af9eb076d6afb20e6b32c3b")


