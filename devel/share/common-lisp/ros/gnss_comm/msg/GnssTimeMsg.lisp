; Auto-generated. Do not edit!


(cl:in-package gnss_comm-msg)


;//! \htmlinclude GnssTimeMsg.msg.html

(cl:defclass <GnssTimeMsg> (roslisp-msg-protocol:ros-message)
  ((week
    :reader week
    :initarg :week
    :type cl:integer
    :initform 0)
   (tow
    :reader tow
    :initarg :tow
    :type cl:float
    :initform 0.0))
)

(cl:defclass GnssTimeMsg (<GnssTimeMsg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GnssTimeMsg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GnssTimeMsg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name gnss_comm-msg:<GnssTimeMsg> is deprecated: use gnss_comm-msg:GnssTimeMsg instead.")))

(cl:ensure-generic-function 'week-val :lambda-list '(m))
(cl:defmethod week-val ((m <GnssTimeMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gnss_comm-msg:week-val is deprecated.  Use gnss_comm-msg:week instead.")
  (week m))

(cl:ensure-generic-function 'tow-val :lambda-list '(m))
(cl:defmethod tow-val ((m <GnssTimeMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gnss_comm-msg:tow-val is deprecated.  Use gnss_comm-msg:tow instead.")
  (tow m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GnssTimeMsg>) ostream)
  "Serializes a message object of type '<GnssTimeMsg>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'week)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'week)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'week)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'week)) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'tow))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GnssTimeMsg>) istream)
  "Deserializes a message object of type '<GnssTimeMsg>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'week)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'week)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'week)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'week)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'tow) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GnssTimeMsg>)))
  "Returns string type for a message object of type '<GnssTimeMsg>"
  "gnss_comm/GnssTimeMsg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GnssTimeMsg)))
  "Returns string type for a message object of type 'GnssTimeMsg"
  "gnss_comm/GnssTimeMsg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GnssTimeMsg>)))
  "Returns md5sum for a message object of type '<GnssTimeMsg>"
  "bf90d33163be4f350369edc1830837b4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GnssTimeMsg)))
  "Returns md5sum for a message object of type 'GnssTimeMsg"
  "bf90d33163be4f350369edc1830837b4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GnssTimeMsg>)))
  "Returns full string definition for message of type '<GnssTimeMsg>"
  (cl:format cl:nil "# This message contains GNSS time expressed in the form of ~%# GNSS week number and time of week(in seconds)~%~%uint32 week~%float64 tow~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GnssTimeMsg)))
  "Returns full string definition for message of type 'GnssTimeMsg"
  (cl:format cl:nil "# This message contains GNSS time expressed in the form of ~%# GNSS week number and time of week(in seconds)~%~%uint32 week~%float64 tow~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GnssTimeMsg>))
  (cl:+ 0
     4
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GnssTimeMsg>))
  "Converts a ROS message object to a list"
  (cl:list 'GnssTimeMsg
    (cl:cons ':week (week msg))
    (cl:cons ':tow (tow msg))
))
