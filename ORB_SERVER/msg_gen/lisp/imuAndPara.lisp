; Auto-generated. Do not edit!


(cl:in-package ORB_CLIENT-msg)


;//! \htmlinclude imuAndPara.msg.html

(cl:defclass <imuAndPara> (roslisp-msg-protocol:ros-message)
  ((nKeypoints
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
   (timestamp
    :reader timestamp
    :initarg :timestamp
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (gyr
    :reader gyr
    :initarg :gyr
    :type (cl:vector ORB_CLIENT-msg:gyroscope)
   :initform (cl:make-array 0 :element-type 'ORB_CLIENT-msg:gyroscope :initial-element (cl:make-instance 'ORB_CLIENT-msg:gyroscope)))
   (acc
    :reader acc
    :initarg :acc
    :type (cl:vector ORB_CLIENT-msg:accleration)
   :initform (cl:make-array 0 :element-type 'ORB_CLIENT-msg:accleration :initial-element (cl:make-instance 'ORB_CLIENT-msg:accleration)))
   (timestampForTest
    :reader timestampForTest
    :initarg :timestampForTest
    :type cl:float
    :initform 0.0))
)

(cl:defclass imuAndPara (<imuAndPara>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <imuAndPara>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'imuAndPara)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ORB_CLIENT-msg:<imuAndPara> is deprecated: use ORB_CLIENT-msg:imuAndPara instead.")))

(cl:ensure-generic-function 'nKeypoints-val :lambda-list '(m))
(cl:defmethod nKeypoints-val ((m <imuAndPara>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ORB_CLIENT-msg:nKeypoints-val is deprecated.  Use ORB_CLIENT-msg:nKeypoints instead.")
  (nKeypoints m))

(cl:ensure-generic-function 'nNextId-val :lambda-list '(m))
(cl:defmethod nNextId-val ((m <imuAndPara>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ORB_CLIENT-msg:nNextId-val is deprecated.  Use ORB_CLIENT-msg:nNextId instead.")
  (nNextId m))

(cl:ensure-generic-function 'mnId-val :lambda-list '(m))
(cl:defmethod mnId-val ((m <imuAndPara>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ORB_CLIENT-msg:mnId-val is deprecated.  Use ORB_CLIENT-msg:mnId instead.")
  (mnId m))

(cl:ensure-generic-function 'timestamp-val :lambda-list '(m))
(cl:defmethod timestamp-val ((m <imuAndPara>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ORB_CLIENT-msg:timestamp-val is deprecated.  Use ORB_CLIENT-msg:timestamp instead.")
  (timestamp m))

(cl:ensure-generic-function 'gyr-val :lambda-list '(m))
(cl:defmethod gyr-val ((m <imuAndPara>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ORB_CLIENT-msg:gyr-val is deprecated.  Use ORB_CLIENT-msg:gyr instead.")
  (gyr m))

(cl:ensure-generic-function 'acc-val :lambda-list '(m))
(cl:defmethod acc-val ((m <imuAndPara>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ORB_CLIENT-msg:acc-val is deprecated.  Use ORB_CLIENT-msg:acc instead.")
  (acc m))

(cl:ensure-generic-function 'timestampForTest-val :lambda-list '(m))
(cl:defmethod timestampForTest-val ((m <imuAndPara>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ORB_CLIENT-msg:timestampForTest-val is deprecated.  Use ORB_CLIENT-msg:timestampForTest instead.")
  (timestampForTest m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <imuAndPara>) ostream)
  "Serializes a message object of type '<imuAndPara>"
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
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'timestamp))))
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
   (cl:slot-value msg 'timestamp))
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
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'timestampForTest))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <imuAndPara>) istream)
  "Deserializes a message object of type '<imuAndPara>"
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
  (cl:setf (cl:slot-value msg 'timestamp) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'timestamp)))
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
    (cl:setf (cl:aref vals i) (cl:make-instance 'ORB_CLIENT-msg:gyroscope))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'acc) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'acc)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'ORB_CLIENT-msg:accleration))
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
    (cl:setf (cl:slot-value msg 'timestampForTest) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<imuAndPara>)))
  "Returns string type for a message object of type '<imuAndPara>"
  "ORB_CLIENT/imuAndPara")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'imuAndPara)))
  "Returns string type for a message object of type 'imuAndPara"
  "ORB_CLIENT/imuAndPara")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<imuAndPara>)))
  "Returns md5sum for a message object of type '<imuAndPara>"
  "6301847c48afa67d4976c7d52b11afe5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'imuAndPara)))
  "Returns md5sum for a message object of type 'imuAndPara"
  "6301847c48afa67d4976c7d52b11afe5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<imuAndPara>)))
  "Returns full string definition for message of type '<imuAndPara>"
  (cl:format cl:nil "uint32 nKeypoints~%uint64 nNextId~%uint64 mnId~%float64[] timestamp~%gyroscope[] gyr~%accleration[] acc ~%float64 timestampForTest~%~%~%================================================================================~%MSG: ORB_CLIENT/gyroscope~%float64 gyrx~%float64 gyry~%float64 gyrz~%~%================================================================================~%MSG: ORB_CLIENT/accleration~%float64 accx~%float64 accy~%float64 accz~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'imuAndPara)))
  "Returns full string definition for message of type 'imuAndPara"
  (cl:format cl:nil "uint32 nKeypoints~%uint64 nNextId~%uint64 mnId~%float64[] timestamp~%gyroscope[] gyr~%accleration[] acc ~%float64 timestampForTest~%~%~%================================================================================~%MSG: ORB_CLIENT/gyroscope~%float64 gyrx~%float64 gyry~%float64 gyrz~%~%================================================================================~%MSG: ORB_CLIENT/accleration~%float64 accx~%float64 accy~%float64 accz~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <imuAndPara>))
  (cl:+ 0
     4
     8
     8
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'timestamp) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'gyr) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'acc) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <imuAndPara>))
  "Converts a ROS message object to a list"
  (cl:list 'imuAndPara
    (cl:cons ':nKeypoints (nKeypoints msg))
    (cl:cons ':nNextId (nNextId msg))
    (cl:cons ':mnId (mnId msg))
    (cl:cons ':timestamp (timestamp msg))
    (cl:cons ':gyr (gyr msg))
    (cl:cons ':acc (acc msg))
    (cl:cons ':timestampForTest (timestampForTest msg))
))
