; Auto-generated. Do not edit!


(cl:in-package ORB_SERVER-msg)


;//! \htmlinclude clientBag.msg.html

(cl:defclass <clientBag> (roslisp-msg-protocol:ros-message)
  ((keyPoints
    :reader keyPoints
    :initarg :keyPoints
    :type (cl:vector ORB_SERVER-msg:keypoint)
   :initform (cl:make-array 0 :element-type 'ORB_SERVER-msg:keypoint :initial-element (cl:make-instance 'ORB_SERVER-msg:keypoint)))
   (descriptors
    :reader descriptors
    :initarg :descriptors
    :type sensor_msgs-msg:Image
    :initform (cl:make-instance 'sensor_msgs-msg:Image))
   (rows
    :reader rows
    :initarg :rows
    :type cl:integer
    :initform 0)
   (cols
    :reader cols
    :initarg :cols
    :type cl:integer
    :initform 0)
   (nKeypoints
    :reader nKeypoints
    :initarg :nKeypoints
    :type cl:integer
    :initform 0)
   (nNextId
    :reader nNextId
    :initarg :nNextId
    :type cl:integer
    :initform 0)
   (mnId
    :reader mnId
    :initarg :mnId
    :type cl:integer
    :initform 0)
   (imuTimestamp
    :reader imuTimestamp
    :initarg :imuTimestamp
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (gyr
    :reader gyr
    :initarg :gyr
    :type (cl:vector ORB_SERVER-msg:gyroscope)
   :initform (cl:make-array 0 :element-type 'ORB_SERVER-msg:gyroscope :initial-element (cl:make-instance 'ORB_SERVER-msg:gyroscope)))
   (acc
    :reader acc
    :initarg :acc
    :type (cl:vector ORB_SERVER-msg:accleration)
   :initform (cl:make-array 0 :element-type 'ORB_SERVER-msg:accleration :initial-element (cl:make-instance 'ORB_SERVER-msg:accleration)))
   (sendTimestamp
    :reader sendTimestamp
    :initarg :sendTimestamp
    :type cl:float
    :initform 0.0))
)

(cl:defclass clientBag (<clientBag>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <clientBag>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'clientBag)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ORB_SERVER-msg:<clientBag> is deprecated: use ORB_SERVER-msg:clientBag instead.")))

(cl:ensure-generic-function 'keyPoints-val :lambda-list '(m))
(cl:defmethod keyPoints-val ((m <clientBag>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ORB_SERVER-msg:keyPoints-val is deprecated.  Use ORB_SERVER-msg:keyPoints instead.")
  (keyPoints m))

(cl:ensure-generic-function 'descriptors-val :lambda-list '(m))
(cl:defmethod descriptors-val ((m <clientBag>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ORB_SERVER-msg:descriptors-val is deprecated.  Use ORB_SERVER-msg:descriptors instead.")
  (descriptors m))

(cl:ensure-generic-function 'rows-val :lambda-list '(m))
(cl:defmethod rows-val ((m <clientBag>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ORB_SERVER-msg:rows-val is deprecated.  Use ORB_SERVER-msg:rows instead.")
  (rows m))

(cl:ensure-generic-function 'cols-val :lambda-list '(m))
(cl:defmethod cols-val ((m <clientBag>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ORB_SERVER-msg:cols-val is deprecated.  Use ORB_SERVER-msg:cols instead.")
  (cols m))

(cl:ensure-generic-function 'nKeypoints-val :lambda-list '(m))
(cl:defmethod nKeypoints-val ((m <clientBag>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ORB_SERVER-msg:nKeypoints-val is deprecated.  Use ORB_SERVER-msg:nKeypoints instead.")
  (nKeypoints m))

(cl:ensure-generic-function 'nNextId-val :lambda-list '(m))
(cl:defmethod nNextId-val ((m <clientBag>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ORB_SERVER-msg:nNextId-val is deprecated.  Use ORB_SERVER-msg:nNextId instead.")
  (nNextId m))

(cl:ensure-generic-function 'mnId-val :lambda-list '(m))
(cl:defmethod mnId-val ((m <clientBag>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ORB_SERVER-msg:mnId-val is deprecated.  Use ORB_SERVER-msg:mnId instead.")
  (mnId m))

(cl:ensure-generic-function 'imuTimestamp-val :lambda-list '(m))
(cl:defmethod imuTimestamp-val ((m <clientBag>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ORB_SERVER-msg:imuTimestamp-val is deprecated.  Use ORB_SERVER-msg:imuTimestamp instead.")
  (imuTimestamp m))

(cl:ensure-generic-function 'gyr-val :lambda-list '(m))
(cl:defmethod gyr-val ((m <clientBag>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ORB_SERVER-msg:gyr-val is deprecated.  Use ORB_SERVER-msg:gyr instead.")
  (gyr m))

(cl:ensure-generic-function 'acc-val :lambda-list '(m))
(cl:defmethod acc-val ((m <clientBag>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ORB_SERVER-msg:acc-val is deprecated.  Use ORB_SERVER-msg:acc instead.")
  (acc m))

(cl:ensure-generic-function 'sendTimestamp-val :lambda-list '(m))
(cl:defmethod sendTimestamp-val ((m <clientBag>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ORB_SERVER-msg:sendTimestamp-val is deprecated.  Use ORB_SERVER-msg:sendTimestamp instead.")
  (sendTimestamp m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <clientBag>) ostream)
  "Serializes a message object of type '<clientBag>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'keyPoints))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'keyPoints))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'descriptors) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'rows)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'rows)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'rows)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'rows)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'cols)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'cols)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'cols)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'cols)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'nKeypoints)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'nKeypoints)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'nKeypoints)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'nKeypoints)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'nNextId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'nNextId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'nNextId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'nNextId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'nNextId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'nNextId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'nNextId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'nNextId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'mnId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'mnId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'mnId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'mnId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'mnId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'mnId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'mnId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'mnId)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'imuTimestamp))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'imuTimestamp))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'gyr))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'gyr))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'acc))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'acc))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'sendTimestamp))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <clientBag>) istream)
  "Deserializes a message object of type '<clientBag>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'keyPoints) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'keyPoints)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'ORB_SERVER-msg:keypoint))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'descriptors) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'rows)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'rows)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'rows)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'rows)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'cols)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'cols)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'cols)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'cols)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'nKeypoints)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'nKeypoints)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'nKeypoints)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'nKeypoints)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'nNextId)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'nNextId)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'nNextId)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'nNextId)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'nNextId)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'nNextId)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'nNextId)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'nNextId)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'mnId)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'mnId)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'mnId)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'mnId)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'mnId)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'mnId)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'mnId)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'mnId)) (cl:read-byte istream))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'imuTimestamp) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'imuTimestamp)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'gyr) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'gyr)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'ORB_SERVER-msg:gyroscope))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'acc) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'acc)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'ORB_SERVER-msg:accleration))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'sendTimestamp) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<clientBag>)))
  "Returns string type for a message object of type '<clientBag>"
  "ORB_SERVER/clientBag")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'clientBag)))
  "Returns string type for a message object of type 'clientBag"
  "ORB_SERVER/clientBag")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<clientBag>)))
  "Returns md5sum for a message object of type '<clientBag>"
  "d2ff93391b125645f1b1afd51415dde4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'clientBag)))
  "Returns md5sum for a message object of type 'clientBag"
  "d2ff93391b125645f1b1afd51415dde4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<clientBag>)))
  "Returns full string definition for message of type '<clientBag>"
  (cl:format cl:nil "keypoint[] keyPoints~%sensor_msgs/Image descriptors~%~%uint32 rows~%uint32 cols~%uint32 nKeypoints~%uint64 nNextId~%uint64 mnId~%~%float64[] imuTimestamp~%gyroscope[] gyr~%accleration[] acc ~%~%float64 sendTimestamp~%~%~%================================================================================~%MSG: ORB_SERVER/keypoint~%float32 ptx~%float32 pty~%float32 size~%float32 angle~%float32 response~%int8 octave~%int8 class_id~%~%================================================================================~%MSG: sensor_msgs/Image~%# This message contains an uncompressed image~%# (0, 0) is at top-left corner of image~%#~%~%Header header        # Header timestamp should be acquisition time of image~%                     # Header frame_id should be optical frame of camera~%                     # origin of frame should be optical center of cameara~%                     # +x should point to the right in the image~%                     # +y should point down in the image~%                     # +z should point into to plane of the image~%                     # If the frame_id here and the frame_id of the CameraInfo~%                     # message associated with the image conflict~%                     # the behavior is undefined~%~%uint32 height         # image height, that is, number of rows~%uint32 width          # image width, that is, number of columns~%~%# The legal values for encoding are in file src/image_encodings.cpp~%# If you want to standardize a new string format, join~%# ros-users@lists.sourceforge.net and send an email proposing a new encoding.~%~%string encoding       # Encoding of pixels -- channel meaning, ordering, size~%                      # taken from the list of strings in include/sensor_msgs/image_encodings.h~%~%uint8 is_bigendian    # is this data bigendian?~%uint32 step           # Full row length in bytes~%uint8[] data          # actual matrix data, size is (step * rows)~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: ORB_SERVER/gyroscope~%float64 gyrx~%float64 gyry~%float64 gyrz~%~%================================================================================~%MSG: ORB_SERVER/accleration~%float64 accx~%float64 accy~%float64 accz~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'clientBag)))
  "Returns full string definition for message of type 'clientBag"
  (cl:format cl:nil "keypoint[] keyPoints~%sensor_msgs/Image descriptors~%~%uint32 rows~%uint32 cols~%uint32 nKeypoints~%uint64 nNextId~%uint64 mnId~%~%float64[] imuTimestamp~%gyroscope[] gyr~%accleration[] acc ~%~%float64 sendTimestamp~%~%~%================================================================================~%MSG: ORB_SERVER/keypoint~%float32 ptx~%float32 pty~%float32 size~%float32 angle~%float32 response~%int8 octave~%int8 class_id~%~%================================================================================~%MSG: sensor_msgs/Image~%# This message contains an uncompressed image~%# (0, 0) is at top-left corner of image~%#~%~%Header header        # Header timestamp should be acquisition time of image~%                     # Header frame_id should be optical frame of camera~%                     # origin of frame should be optical center of cameara~%                     # +x should point to the right in the image~%                     # +y should point down in the image~%                     # +z should point into to plane of the image~%                     # If the frame_id here and the frame_id of the CameraInfo~%                     # message associated with the image conflict~%                     # the behavior is undefined~%~%uint32 height         # image height, that is, number of rows~%uint32 width          # image width, that is, number of columns~%~%# The legal values for encoding are in file src/image_encodings.cpp~%# If you want to standardize a new string format, join~%# ros-users@lists.sourceforge.net and send an email proposing a new encoding.~%~%string encoding       # Encoding of pixels -- channel meaning, ordering, size~%                      # taken from the list of strings in include/sensor_msgs/image_encodings.h~%~%uint8 is_bigendian    # is this data bigendian?~%uint32 step           # Full row length in bytes~%uint8[] data          # actual matrix data, size is (step * rows)~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: ORB_SERVER/gyroscope~%float64 gyrx~%float64 gyry~%float64 gyrz~%~%================================================================================~%MSG: ORB_SERVER/accleration~%float64 accx~%float64 accy~%float64 accz~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <clientBag>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'keyPoints) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'descriptors))
     4
     4
     4
     8
     8
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'imuTimestamp) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'gyr) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'acc) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <clientBag>))
  "Converts a ROS message object to a list"
  (cl:list 'clientBag
    (cl:cons ':keyPoints (keyPoints msg))
    (cl:cons ':descriptors (descriptors msg))
    (cl:cons ':rows (rows msg))
    (cl:cons ':cols (cols msg))
    (cl:cons ':nKeypoints (nKeypoints msg))
    (cl:cons ':nNextId (nNextId msg))
    (cl:cons ':mnId (mnId msg))
    (cl:cons ':imuTimestamp (imuTimestamp msg))
    (cl:cons ':gyr (gyr msg))
    (cl:cons ':acc (acc msg))
    (cl:cons ':sendTimestamp (sendTimestamp msg))
))
