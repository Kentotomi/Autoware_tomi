# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from vector_map_msgs/DTLane.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class DTLane(genpy.Message):
  _md5sum = "50d83078491bca58f98774489d1f1ac9"
  _type = "vector_map_msgs/DTLane"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """# Ver 1.00
int32 did
float64 dist
int32 pid
float64 dir
float64 apara
float64 r
float64 slope
float64 cant
float64 lw
float64 rw
"""
  __slots__ = ['did','dist','pid','dir','apara','r','slope','cant','lw','rw']
  _slot_types = ['int32','float64','int32','float64','float64','float64','float64','float64','float64','float64']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       did,dist,pid,dir,apara,r,slope,cant,lw,rw

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(DTLane, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.did is None:
        self.did = 0
      if self.dist is None:
        self.dist = 0.
      if self.pid is None:
        self.pid = 0
      if self.dir is None:
        self.dir = 0.
      if self.apara is None:
        self.apara = 0.
      if self.r is None:
        self.r = 0.
      if self.slope is None:
        self.slope = 0.
      if self.cant is None:
        self.cant = 0.
      if self.lw is None:
        self.lw = 0.
      if self.rw is None:
        self.rw = 0.
    else:
      self.did = 0
      self.dist = 0.
      self.pid = 0
      self.dir = 0.
      self.apara = 0.
      self.r = 0.
      self.slope = 0.
      self.cant = 0.
      self.lw = 0.
      self.rw = 0.

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
      _x = self
      buff.write(_get_struct_idi7d().pack(_x.did, _x.dist, _x.pid, _x.dir, _x.apara, _x.r, _x.slope, _x.cant, _x.lw, _x.rw))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      end = 0
      _x = self
      start = end
      end += 72
      (_x.did, _x.dist, _x.pid, _x.dir, _x.apara, _x.r, _x.slope, _x.cant, _x.lw, _x.rw,) = _get_struct_idi7d().unpack(str[start:end])
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
      _x = self
      buff.write(_get_struct_idi7d().pack(_x.did, _x.dist, _x.pid, _x.dir, _x.apara, _x.r, _x.slope, _x.cant, _x.lw, _x.rw))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      end = 0
      _x = self
      start = end
      end += 72
      (_x.did, _x.dist, _x.pid, _x.dir, _x.apara, _x.r, _x.slope, _x.cant, _x.lw, _x.rw,) = _get_struct_idi7d().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_idi7d = None
def _get_struct_idi7d():
    global _struct_idi7d
    if _struct_idi7d is None:
        _struct_idi7d = struct.Struct("<idi7d")
    return _struct_idi7d
