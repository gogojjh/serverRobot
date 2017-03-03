# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from ORB_SERVER/keypoint.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class keypoint(genpy.Message):
  _md5sum = "cd60b68aa4638c0cceb817f0f158a18b"
  _type = "ORB_SERVER/keypoint"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """float32 ptx
float32 pty
float32 size
float32 angle
float32 response
int8 octave
int8 class_id
"""
  __slots__ = ['ptx','pty','size','angle','response','octave','class_id']
  _slot_types = ['float32','float32','float32','float32','float32','int8','int8']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       ptx,pty,size,angle,response,octave,class_id

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(keypoint, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.ptx is None:
        self.ptx = 0.
      if self.pty is None:
        self.pty = 0.
      if self.size is None:
        self.size = 0.
      if self.angle is None:
        self.angle = 0.
      if self.response is None:
        self.response = 0.
      if self.octave is None:
        self.octave = 0
      if self.class_id is None:
        self.class_id = 0
    else:
      self.ptx = 0.
      self.pty = 0.
      self.size = 0.
      self.angle = 0.
      self.response = 0.
      self.octave = 0
      self.class_id = 0

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
      buff.write(_struct_5f2b.pack(_x.ptx, _x.pty, _x.size, _x.angle, _x.response, _x.octave, _x.class_id))
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
      end += 22
      (_x.ptx, _x.pty, _x.size, _x.angle, _x.response, _x.octave, _x.class_id,) = _struct_5f2b.unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self
      buff.write(_struct_5f2b.pack(_x.ptx, _x.pty, _x.size, _x.angle, _x.response, _x.octave, _x.class_id))
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
      end += 22
      (_x.ptx, _x.pty, _x.size, _x.angle, _x.response, _x.octave, _x.class_id,) = _struct_5f2b.unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
_struct_5f2b = struct.Struct("<5f2b")