# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from cares_msgs/MappingGoal.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import cares_msgs.msg
import geometry_msgs.msg
import std_msgs.msg

class MappingGoal(genpy.Message):
  _md5sum = "f45265005af9eb076d6afb20e6b32c3b"
  _type = "cares_msgs/MappingGoal"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
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
"""
  # Pseudo-constants
  STOP = 0
  MAP = 1
  ACTUATE = 3

  __slots__ = ['command','scanning_goals','metric_goal']
  _slot_types = ['uint8','cares_msgs/ScanningGoal[]','cares_msgs/MetricExtractionGoal']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       command,scanning_goals,metric_goal

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(MappingGoal, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.command is None:
        self.command = 0
      if self.scanning_goals is None:
        self.scanning_goals = []
      if self.metric_goal is None:
        self.metric_goal = cares_msgs.msg.MetricExtractionGoal()
    else:
      self.command = 0
      self.scanning_goals = []
      self.metric_goal = cares_msgs.msg.MetricExtractionGoal()

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      _x = self.command
      buff.write(_get_struct_B().pack(_x))
      length = len(self.scanning_goals)
      buff.write(_struct_I.pack(length))
      for val1 in self.scanning_goals:
        _x = val1.command
        buff.write(_get_struct_B().pack(_x))
        _v1 = val1.init_pose
        _v2 = _v1.header
        _x = _v2.seq
        buff.write(_get_struct_I().pack(_x))
        _v3 = _v2.stamp
        _x = _v3
        buff.write(_get_struct_2I().pack(_x.secs, _x.nsecs))
        _x = _v2.frame_id
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
        _v4 = _v1.pose
        _v5 = _v4.position
        _x = _v5
        buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
        _v6 = _v4.orientation
        _x = _v6
        buff.write(_get_struct_4d().pack(_x.x, _x.y, _x.z, _x.w))
        _v7 = val1.planning_link
        _x = _v7.data
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
        _v8 = val1.world_link
        _x = _v8.data
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
        _v9 = val1.get_marker
        _x = _v9.data
        buff.write(_get_struct_B().pack(_x))
        _x = val1.path_id
        buff.write(_get_struct_B().pack(_x))
        _v10 = val1.file_path
        _x = _v10.data
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self.metric_goal.command
      buff.write(_get_struct_B().pack(_x))
      _x = self.metric_goal.file_path.data
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.scanning_goals is None:
        self.scanning_goals = None
      if self.metric_goal is None:
        self.metric_goal = cares_msgs.msg.MetricExtractionGoal()
      end = 0
      start = end
      end += 1
      (self.command,) = _get_struct_B().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.scanning_goals = []
      for i in range(0, length):
        val1 = cares_msgs.msg.ScanningGoal()
        start = end
        end += 1
        (val1.command,) = _get_struct_B().unpack(str[start:end])
        _v11 = val1.init_pose
        _v12 = _v11.header
        start = end
        end += 4
        (_v12.seq,) = _get_struct_I().unpack(str[start:end])
        _v13 = _v12.stamp
        _x = _v13
        start = end
        end += 8
        (_x.secs, _x.nsecs,) = _get_struct_2I().unpack(str[start:end])
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          _v12.frame_id = str[start:end].decode('utf-8', 'rosmsg')
        else:
          _v12.frame_id = str[start:end]
        _v14 = _v11.pose
        _v15 = _v14.position
        _x = _v15
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
        _v16 = _v14.orientation
        _x = _v16
        start = end
        end += 32
        (_x.x, _x.y, _x.z, _x.w,) = _get_struct_4d().unpack(str[start:end])
        _v17 = val1.planning_link
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          _v17.data = str[start:end].decode('utf-8', 'rosmsg')
        else:
          _v17.data = str[start:end]
        _v18 = val1.world_link
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          _v18.data = str[start:end].decode('utf-8', 'rosmsg')
        else:
          _v18.data = str[start:end]
        _v19 = val1.get_marker
        start = end
        end += 1
        (_v19.data,) = _get_struct_B().unpack(str[start:end])
        _v19.data = bool(_v19.data)
        start = end
        end += 1
        (val1.path_id,) = _get_struct_B().unpack(str[start:end])
        _v20 = val1.file_path
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          _v20.data = str[start:end].decode('utf-8', 'rosmsg')
        else:
          _v20.data = str[start:end]
        self.scanning_goals.append(val1)
      start = end
      end += 1
      (self.metric_goal.command,) = _get_struct_B().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.metric_goal.file_path.data = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.metric_goal.file_path.data = str[start:end]
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self.command
      buff.write(_get_struct_B().pack(_x))
      length = len(self.scanning_goals)
      buff.write(_struct_I.pack(length))
      for val1 in self.scanning_goals:
        _x = val1.command
        buff.write(_get_struct_B().pack(_x))
        _v21 = val1.init_pose
        _v22 = _v21.header
        _x = _v22.seq
        buff.write(_get_struct_I().pack(_x))
        _v23 = _v22.stamp
        _x = _v23
        buff.write(_get_struct_2I().pack(_x.secs, _x.nsecs))
        _x = _v22.frame_id
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
        _v24 = _v21.pose
        _v25 = _v24.position
        _x = _v25
        buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
        _v26 = _v24.orientation
        _x = _v26
        buff.write(_get_struct_4d().pack(_x.x, _x.y, _x.z, _x.w))
        _v27 = val1.planning_link
        _x = _v27.data
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
        _v28 = val1.world_link
        _x = _v28.data
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
        _v29 = val1.get_marker
        _x = _v29.data
        buff.write(_get_struct_B().pack(_x))
        _x = val1.path_id
        buff.write(_get_struct_B().pack(_x))
        _v30 = val1.file_path
        _x = _v30.data
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self.metric_goal.command
      buff.write(_get_struct_B().pack(_x))
      _x = self.metric_goal.file_path.data
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.scanning_goals is None:
        self.scanning_goals = None
      if self.metric_goal is None:
        self.metric_goal = cares_msgs.msg.MetricExtractionGoal()
      end = 0
      start = end
      end += 1
      (self.command,) = _get_struct_B().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.scanning_goals = []
      for i in range(0, length):
        val1 = cares_msgs.msg.ScanningGoal()
        start = end
        end += 1
        (val1.command,) = _get_struct_B().unpack(str[start:end])
        _v31 = val1.init_pose
        _v32 = _v31.header
        start = end
        end += 4
        (_v32.seq,) = _get_struct_I().unpack(str[start:end])
        _v33 = _v32.stamp
        _x = _v33
        start = end
        end += 8
        (_x.secs, _x.nsecs,) = _get_struct_2I().unpack(str[start:end])
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          _v32.frame_id = str[start:end].decode('utf-8', 'rosmsg')
        else:
          _v32.frame_id = str[start:end]
        _v34 = _v31.pose
        _v35 = _v34.position
        _x = _v35
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
        _v36 = _v34.orientation
        _x = _v36
        start = end
        end += 32
        (_x.x, _x.y, _x.z, _x.w,) = _get_struct_4d().unpack(str[start:end])
        _v37 = val1.planning_link
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          _v37.data = str[start:end].decode('utf-8', 'rosmsg')
        else:
          _v37.data = str[start:end]
        _v38 = val1.world_link
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          _v38.data = str[start:end].decode('utf-8', 'rosmsg')
        else:
          _v38.data = str[start:end]
        _v39 = val1.get_marker
        start = end
        end += 1
        (_v39.data,) = _get_struct_B().unpack(str[start:end])
        _v39.data = bool(_v39.data)
        start = end
        end += 1
        (val1.path_id,) = _get_struct_B().unpack(str[start:end])
        _v40 = val1.file_path
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          _v40.data = str[start:end].decode('utf-8', 'rosmsg')
        else:
          _v40.data = str[start:end]
        self.scanning_goals.append(val1)
      start = end
      end += 1
      (self.metric_goal.command,) = _get_struct_B().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.metric_goal.file_path.data = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.metric_goal.file_path.data = str[start:end]
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_2I = None
def _get_struct_2I():
    global _struct_2I
    if _struct_2I is None:
        _struct_2I = struct.Struct("<2I")
    return _struct_2I
_struct_3d = None
def _get_struct_3d():
    global _struct_3d
    if _struct_3d is None:
        _struct_3d = struct.Struct("<3d")
    return _struct_3d
_struct_4d = None
def _get_struct_4d():
    global _struct_4d
    if _struct_4d is None:
        _struct_4d = struct.Struct("<4d")
    return _struct_4d
_struct_B = None
def _get_struct_B():
    global _struct_B
    if _struct_B is None:
        _struct_B = struct.Struct("<B")
    return _struct_B
