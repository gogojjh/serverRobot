; Auto-generated. Do not edit!


(cl:in-package ORB_CLIENT-msg)


;//! \htmlinclude dstate.msg.html

(cl:defclass <dstate> (roslisp-msg-protocol:ros-message)
  ((sendTimestamp
    :reader sendTimestamp
    :initarg :sendTimestamp
    :type cl:float
    :initform 0.0))
)

(cl:defclass dstate (<dstate>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <dstate>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'dstate)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ORB_CLIENT-msg:<dstate> is deprecated: use ORB_CLIENT-msg:dstate instead.")))

(cl:ensure-generic-function 'sendTimestamp-val :lambda-list '(m))
(cl:defmethod sendTimestamp-val ((m <dstate>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ORB_CLIENT-msg:sendTimestamp-val is deprecated.  Use ORB_CLIENT-msg:sendTimestamp instead.")
  (sendTimestamp m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <dstate>) ostream)
  "Serializes a message object of type '<dstate>"
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <dstate>) istream)
  "Deserializes a message object of type '<dstate>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<dstate>)))
  "Returns string type for a message object of type '<dstate>"
  "ORB_CLIENT/dstate")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'dstate)))
  "Returns string type for a message object of type 'dstate"
  "ORB_CLIENT/dstate")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<dstate>)))
  "Returns md5sum for a message object of type '<dstate>"
  "7a1d7afa5798bdca65d4031fd76fac21")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'dstate)))
  "Returns md5sum for a message object of type 'dstate"
  "7a1d7afa5798bdca65d4031fd76fac21")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<dstate>)))
  "Returns full string definition for message of type '<dstate>"
  (cl:format cl:nil "float64 sendTimestamp~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'dstate)))
  "Returns full string definition for message of type 'dstate"
  (cl:format cl:nil "float64 sendTimestamp~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <dstate>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <dstate>))
  "Converts a ROS message object to a list"
  (cl:list 'dstate
    (cl:cons ':sendTimestamp (sendTimestamp msg))
))
