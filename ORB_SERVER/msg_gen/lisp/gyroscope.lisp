; Auto-generated. Do not edit!


(cl:in-package ORB_CLIENT-msg)


;//! \htmlinclude gyroscope.msg.html

(cl:defclass <gyroscope> (roslisp-msg-protocol:ros-message)
  ((gyrx
    :reader gyrx
    :initarg :gyrx
    :type cl:float
    :initform 0.0)
   (gyry
    :reader gyry
    :initarg :gyry
    :type cl:float
    :initform 0.0)
   (gyrz
    :reader gyrz
    :initarg :gyrz
    :type cl:float
    :initform 0.0))
)

(cl:defclass gyroscope (<gyroscope>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <gyroscope>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'gyroscope)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ORB_CLIENT-msg:<gyroscope> is deprecated: use ORB_CLIENT-msg:gyroscope instead.")))

(cl:ensure-generic-function 'gyrx-val :lambda-list '(m))
(cl:defmethod gyrx-val ((m <gyroscope>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ORB_CLIENT-msg:gyrx-val is deprecated.  Use ORB_CLIENT-msg:gyrx instead.")
  (gyrx m))

(cl:ensure-generic-function 'gyry-val :lambda-list '(m))
(cl:defmethod gyry-val ((m <gyroscope>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ORB_CLIENT-msg:gyry-val is deprecated.  Use ORB_CLIENT-msg:gyry instead.")
  (gyry m))

(cl:ensure-generic-function 'gyrz-val :lambda-list '(m))
(cl:defmethod gyrz-val ((m <gyroscope>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ORB_CLIENT-msg:gyrz-val is deprecated.  Use ORB_CLIENT-msg:gyrz instead.")
  (gyrz m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <gyroscope>) ostream)
  "Serializes a message object of type '<gyroscope>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'gyrx))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'gyry))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'gyrz))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <gyroscope>) istream)
  "Deserializes a message object of type '<gyroscope>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'gyrx) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'gyry) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'gyrz) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<gyroscope>)))
  "Returns string type for a message object of type '<gyroscope>"
  "ORB_CLIENT/gyroscope")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'gyroscope)))
  "Returns string type for a message object of type 'gyroscope"
  "ORB_CLIENT/gyroscope")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<gyroscope>)))
  "Returns md5sum for a message object of type '<gyroscope>"
  "6761d1eb1d5de5bf0f1edaa1fc9caa02")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'gyroscope)))
  "Returns md5sum for a message object of type 'gyroscope"
  "6761d1eb1d5de5bf0f1edaa1fc9caa02")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<gyroscope>)))
  "Returns full string definition for message of type '<gyroscope>"
  (cl:format cl:nil "float64 gyrx~%float64 gyry~%float64 gyrz~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'gyroscope)))
  "Returns full string definition for message of type 'gyroscope"
  (cl:format cl:nil "float64 gyrx~%float64 gyry~%float64 gyrz~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <gyroscope>))
  (cl:+ 0
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <gyroscope>))
  "Converts a ROS message object to a list"
  (cl:list 'gyroscope
    (cl:cons ':gyrx (gyrx msg))
    (cl:cons ':gyry (gyry msg))
    (cl:cons ':gyrz (gyrz msg))
))
