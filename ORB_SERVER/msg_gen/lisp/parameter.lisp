; Auto-generated. Do not edit!


(cl:in-package ORB_CLIENT-msg)


;//! \htmlinclude parameter.msg.html

(cl:defclass <parameter> (roslisp-msg-protocol:ros-message)
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
   :initform (cl:make-array 0 :element-type 'ORB_CLIENT-msg:accleration :initial-element (cl:make-instance 'ORB_CLIENT-msg:accleration))))
)

(cl:defclass parameter (<parameter>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <parameter>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'parameter)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ORB_CLIENT-msg:<parameter> is deprecated: use ORB_CLIENT-msg:parameter instead.")))

(cl:ensure-generic-function 'nKeypoints-val :lambda-list '(m))
(cl:defmethod nKeypoints-val ((m <parameter>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ORB_CLIENT-msg:nKeypoints-val is deprecated.  Use ORB_CLIENT-msg:nKeypoints instead.")
  (nKeypoints m))

(cl:ensure-generic-function 'nNextId-val :lambda-list '(m))
(cl:defmethod nNextId-val ((m <parameter>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ORB_CLIENT-msg:nNextId-val is deprecated.  Use ORB_CLIENT-msg:nNextId instead.")
  (nNextId m))

(cl:ensure-generic-function 'mnId-val :lambda-list '(m))
(cl:defmethod mnId-val ((m <parameter>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ORB_CLIENT-msg:mnId-val is deprecated.  Use ORB_CLIENT-msg:mnId instead.")
  (mnId m))

(cl:ensure-generic-function 'timestamp-val :lambda-list '(m))
(cl:defmethod timestamp-val ((m <parameter>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ORB_CLIENT-msg:timestamp-val is deprecated.  Use ORB_CLIENT-msg:timestamp instead.")
  (timestamp m))

(cl:ensure-generic-function 'gyr-val :lambda-list '(m))
(cl:defmethod gyr-val ((m <parameter>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ORB_CLIENT-msg:gyr-val is deprecated.  Use ORB_CLIENT-msg:gyr instead.")
  (gyr m))

(cl:ensure-generic-function 'acc-val :lambda-list '(m))
(cl:defmethod acc-val ((m <parameter>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ORB_CLIENT-msg:acc-val is deprecated.  Use ORB_CLIENT-msg:acc instead.")
  (acc m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <parameter>) ostream)
  "Serializes a message object of type '<parameter>"
  (cl:let* ((signed (cl:slot-value msg 'nKeypoints)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
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
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <parameter>) istream)
  "Deserializes a message object of type '<parameter>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'nKeypoints) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
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
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<parameter>)))
  "Returns string type for a message object of type '<parameter>"
  "ORB_CLIENT/parameter")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'parameter)))
  "Returns string type for a message object of type 'parameter"
  "ORB_CLIENT/parameter")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<parameter>)))
  "Returns md5sum for a message object of type '<parameter>"
  "10b2e1d77b9779defba748003083cf57")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'parameter)))
  "Returns md5sum for a message object of type 'parameter"
  "10b2e1d77b9779defba748003083cf57")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<parameter>)))
  "Returns full string definition for message of type '<parameter>"
  (cl:format cl:nil "int32 nKeypoints~%uint64 nNextId~%uint64 mnId~%float64[] timestamp~%gyroscope[] gyr~%accleration[] acc ~%~%================================================================================~%MSG: ORB_CLIENT/gyroscope~%float64 gyrx~%float64 gyry~%float64 gyrz~%~%================================================================================~%MSG: ORB_CLIENT/accleration~%float64 accx~%float64 accy~%float64 accz~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'parameter)))
  "Returns full string definition for message of type 'parameter"
  (cl:format cl:nil "int32 nKeypoints~%uint64 nNextId~%uint64 mnId~%float64[] timestamp~%gyroscope[] gyr~%accleration[] acc ~%~%================================================================================~%MSG: ORB_CLIENT/gyroscope~%float64 gyrx~%float64 gyry~%float64 gyrz~%~%================================================================================~%MSG: ORB_CLIENT/accleration~%float64 accx~%float64 accy~%float64 accz~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <parameter>))
  (cl:+ 0
     4
     8
     8
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'timestamp) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'gyr) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'acc) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <parameter>))
  "Converts a ROS message object to a list"
  (cl:list 'parameter
    (cl:cons ':nKeypoints (nKeypoints msg))
    (cl:cons ':nNextId (nNextId msg))
    (cl:cons ':mnId (mnId msg))
    (cl:cons ':timestamp (timestamp msg))
    (cl:cons ':gyr (gyr msg))
    (cl:cons ':acc (acc msg))
))
