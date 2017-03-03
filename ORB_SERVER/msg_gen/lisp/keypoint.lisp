; Auto-generated. Do not edit!


(cl:in-package ORB_CLIENT-msg)


;//! \htmlinclude keypoint.msg.html

(cl:defclass <keypoint> (roslisp-msg-protocol:ros-message)
  ((ptx
    :reader ptx
    :initarg :ptx
    :type cl:float
    :initform 0.0)
   (pty
    :reader pty
    :initarg :pty
    :type cl:float
    :initform 0.0)
   (size
    :reader size
    :initarg :size
    :type cl:float
    :initform 0.0)
   (angle
    :reader angle
    :initarg :angle
    :type cl:float
    :initform 0.0)
   (response
    :reader response
    :initarg :response
    :type cl:float
    :initform 0.0)
   (octave
    :reader octave
    :initarg :octave
    :type cl:fixnum
    :initform 0)
   (class_id
    :reader class_id
    :initarg :class_id
    :type cl:fixnum
    :initform 0))
)

(cl:defclass keypoint (<keypoint>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <keypoint>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'keypoint)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ORB_CLIENT-msg:<keypoint> is deprecated: use ORB_CLIENT-msg:keypoint instead.")))

(cl:ensure-generic-function 'ptx-val :lambda-list '(m))
(cl:defmethod ptx-val ((m <keypoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ORB_CLIENT-msg:ptx-val is deprecated.  Use ORB_CLIENT-msg:ptx instead.")
  (ptx m))

(cl:ensure-generic-function 'pty-val :lambda-list '(m))
(cl:defmethod pty-val ((m <keypoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ORB_CLIENT-msg:pty-val is deprecated.  Use ORB_CLIENT-msg:pty instead.")
  (pty m))

(cl:ensure-generic-function 'size-val :lambda-list '(m))
(cl:defmethod size-val ((m <keypoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ORB_CLIENT-msg:size-val is deprecated.  Use ORB_CLIENT-msg:size instead.")
  (size m))

(cl:ensure-generic-function 'angle-val :lambda-list '(m))
(cl:defmethod angle-val ((m <keypoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ORB_CLIENT-msg:angle-val is deprecated.  Use ORB_CLIENT-msg:angle instead.")
  (angle m))

(cl:ensure-generic-function 'response-val :lambda-list '(m))
(cl:defmethod response-val ((m <keypoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ORB_CLIENT-msg:response-val is deprecated.  Use ORB_CLIENT-msg:response instead.")
  (response m))

(cl:ensure-generic-function 'octave-val :lambda-list '(m))
(cl:defmethod octave-val ((m <keypoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ORB_CLIENT-msg:octave-val is deprecated.  Use ORB_CLIENT-msg:octave instead.")
  (octave m))

(cl:ensure-generic-function 'class_id-val :lambda-list '(m))
(cl:defmethod class_id-val ((m <keypoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ORB_CLIENT-msg:class_id-val is deprecated.  Use ORB_CLIENT-msg:class_id instead.")
  (class_id m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <keypoint>) ostream)
  "Serializes a message object of type '<keypoint>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'ptx))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'pty))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'size))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'angle))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'response))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'octave)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'class_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <keypoint>) istream)
  "Deserializes a message object of type '<keypoint>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'ptx) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'pty) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'size) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'angle) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'response) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'octave) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'class_id) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<keypoint>)))
  "Returns string type for a message object of type '<keypoint>"
  "ORB_CLIENT/keypoint")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'keypoint)))
  "Returns string type for a message object of type 'keypoint"
  "ORB_CLIENT/keypoint")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<keypoint>)))
  "Returns md5sum for a message object of type '<keypoint>"
  "cd60b68aa4638c0cceb817f0f158a18b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'keypoint)))
  "Returns md5sum for a message object of type 'keypoint"
  "cd60b68aa4638c0cceb817f0f158a18b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<keypoint>)))
  "Returns full string definition for message of type '<keypoint>"
  (cl:format cl:nil "float32 ptx~%float32 pty~%float32 size~%float32 angle~%float32 response~%int8 octave~%int8 class_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'keypoint)))
  "Returns full string definition for message of type 'keypoint"
  (cl:format cl:nil "float32 ptx~%float32 pty~%float32 size~%float32 angle~%float32 response~%int8 octave~%int8 class_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <keypoint>))
  (cl:+ 0
     4
     4
     4
     4
     4
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <keypoint>))
  "Converts a ROS message object to a list"
  (cl:list 'keypoint
    (cl:cons ':ptx (ptx msg))
    (cl:cons ':pty (pty msg))
    (cl:cons ':size (size msg))
    (cl:cons ':angle (angle msg))
    (cl:cons ':response (response msg))
    (cl:cons ':octave (octave msg))
    (cl:cons ':class_id (class_id msg))
))
