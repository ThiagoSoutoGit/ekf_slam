;; Auto-generated. Do not edit!


(when (boundp 'cares_msgs::ScanningGoal)
  (if (not (find-package "CARES_MSGS"))
    (make-package "CARES_MSGS"))
  (shadow 'ScanningGoal (find-package "CARES_MSGS")))
(unless (find-package "CARES_MSGS::SCANNINGGOAL")
  (make-package "CARES_MSGS::SCANNINGGOAL"))

(in-package "ROS")
;;//! \htmlinclude ScanningGoal.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*STOP*" (find-package "CARES_MSGS::SCANNINGGOAL"))
(shadow '*STOP* (find-package "CARES_MSGS::SCANNINGGOAL"))
(defconstant cares_msgs::ScanningGoal::*STOP* 0)
(intern "*MAP*" (find-package "CARES_MSGS::SCANNINGGOAL"))
(shadow '*MAP* (find-package "CARES_MSGS::SCANNINGGOAL"))
(defconstant cares_msgs::ScanningGoal::*MAP* 1)
(intern "*MOVE*" (find-package "CARES_MSGS::SCANNINGGOAL"))
(shadow '*MOVE* (find-package "CARES_MSGS::SCANNINGGOAL"))
(defconstant cares_msgs::ScanningGoal::*MOVE* 2)
(intern "*ACTUATE*" (find-package "CARES_MSGS::SCANNINGGOAL"))
(shadow '*ACTUATE* (find-package "CARES_MSGS::SCANNINGGOAL"))
(defconstant cares_msgs::ScanningGoal::*ACTUATE* 3)

(defun cares_msgs::ScanningGoal-to-symbol (const)
  (cond
        ((= const 0) 'cares_msgs::ScanningGoal::*STOP*)
        ((= const 1) 'cares_msgs::ScanningGoal::*MAP*)
        ((= const 2) 'cares_msgs::ScanningGoal::*MOVE*)
        ((= const 3) 'cares_msgs::ScanningGoal::*ACTUATE*)
        (t nil)))

(defclass cares_msgs::ScanningGoal
  :super ros::object
  :slots (_command _init_pose _planning_link _world_link _get_marker _path_id _file_path ))

(defmethod cares_msgs::ScanningGoal
  (:init
   (&key
    ((:command __command) 0)
    ((:init_pose __init_pose) (instance geometry_msgs::PoseStamped :init))
    ((:planning_link __planning_link) (instance std_msgs::String :init))
    ((:world_link __world_link) (instance std_msgs::String :init))
    ((:get_marker __get_marker) (instance std_msgs::Bool :init))
    ((:path_id __path_id) 0)
    ((:file_path __file_path) (instance std_msgs::String :init))
    )
   (send-super :init)
   (setq _command (round __command))
   (setq _init_pose __init_pose)
   (setq _planning_link __planning_link)
   (setq _world_link __world_link)
   (setq _get_marker __get_marker)
   (setq _path_id (round __path_id))
   (setq _file_path __file_path)
   self)
  (:command
   (&optional __command)
   (if __command (setq _command __command)) _command)
  (:init_pose
   (&rest __init_pose)
   (if (keywordp (car __init_pose))
       (send* _init_pose __init_pose)
     (progn
       (if __init_pose (setq _init_pose (car __init_pose)))
       _init_pose)))
  (:planning_link
   (&rest __planning_link)
   (if (keywordp (car __planning_link))
       (send* _planning_link __planning_link)
     (progn
       (if __planning_link (setq _planning_link (car __planning_link)))
       _planning_link)))
  (:world_link
   (&rest __world_link)
   (if (keywordp (car __world_link))
       (send* _world_link __world_link)
     (progn
       (if __world_link (setq _world_link (car __world_link)))
       _world_link)))
  (:get_marker
   (&rest __get_marker)
   (if (keywordp (car __get_marker))
       (send* _get_marker __get_marker)
     (progn
       (if __get_marker (setq _get_marker (car __get_marker)))
       _get_marker)))
  (:path_id
   (&optional __path_id)
   (if __path_id (setq _path_id __path_id)) _path_id)
  (:file_path
   (&rest __file_path)
   (if (keywordp (car __file_path))
       (send* _file_path __file_path)
     (progn
       (if __file_path (setq _file_path (car __file_path)))
       _file_path)))
  (:serialization-length
   ()
   (+
    ;; uint8 _command
    1
    ;; geometry_msgs/PoseStamped _init_pose
    (send _init_pose :serialization-length)
    ;; std_msgs/String _planning_link
    (send _planning_link :serialization-length)
    ;; std_msgs/String _world_link
    (send _world_link :serialization-length)
    ;; std_msgs/Bool _get_marker
    (send _get_marker :serialization-length)
    ;; uint8 _path_id
    1
    ;; std_msgs/String _file_path
    (send _file_path :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _command
       (write-byte _command s)
     ;; geometry_msgs/PoseStamped _init_pose
       (send _init_pose :serialize s)
     ;; std_msgs/String _planning_link
       (send _planning_link :serialize s)
     ;; std_msgs/String _world_link
       (send _world_link :serialize s)
     ;; std_msgs/Bool _get_marker
       (send _get_marker :serialize s)
     ;; uint8 _path_id
       (write-byte _path_id s)
     ;; std_msgs/String _file_path
       (send _file_path :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _command
     (setq _command (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; geometry_msgs/PoseStamped _init_pose
     (send _init_pose :deserialize buf ptr-) (incf ptr- (send _init_pose :serialization-length))
   ;; std_msgs/String _planning_link
     (send _planning_link :deserialize buf ptr-) (incf ptr- (send _planning_link :serialization-length))
   ;; std_msgs/String _world_link
     (send _world_link :deserialize buf ptr-) (incf ptr- (send _world_link :serialization-length))
   ;; std_msgs/Bool _get_marker
     (send _get_marker :deserialize buf ptr-) (incf ptr- (send _get_marker :serialization-length))
   ;; uint8 _path_id
     (setq _path_id (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; std_msgs/String _file_path
     (send _file_path :deserialize buf ptr-) (incf ptr- (send _file_path :serialization-length))
   ;;
   self)
  )

(setf (get cares_msgs::ScanningGoal :md5sum-) "cae2bb73f288441970bca461bed96dca")
(setf (get cares_msgs::ScanningGoal :datatype-) "cares_msgs/ScanningGoal")
(setf (get cares_msgs::ScanningGoal :definition-)
      "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
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
")



(provide :cares_msgs/ScanningGoal "cae2bb73f288441970bca461bed96dca")


