; Auto-generated. Do not edit!


(cl:in-package gnss_comm-msg)


;//! \htmlinclude GnssTimePulseInfoMsg.msg.html

(cl:defclass <GnssTimePulseInfoMsg> (roslisp-msg-protocol:ros-message)
  ((time
    :reader time
    :initarg :time
    :type gnss_comm-msg:GnssTimeMsg
    :initform (cl:make-instance 'gnss_comm-msg:GnssTimeMsg))
   (utc_based
    :reader utc_based
    :initarg :utc_based
    :type cl:boolean
    :initform cl:nil)
   (time_sys
    :reader time_sys
    :initarg :time_sys
    :type cl:integer
    :initform 0))
)

(cl:defclass GnssTimePulseInfoMsg (<GnssTimePulseInfoMsg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GnssTimePulseInfoMsg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GnssTimePulseInfoMsg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name gnss_comm-msg:<GnssTimePulseInfoMsg> is deprecated: use gnss_comm-msg:GnssTimePulseInfoMsg instead.")))

(cl:ensure-generic-function 'time-val :lambda-list '(m))
(cl:defmethod time-val ((m <GnssTimePulseInfoMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gnss_comm-msg:time-val is deprecated.  Use gnss_comm-msg:time instead.")
  (time m))

(cl:ensure-generic-function 'utc_based-val :lambda-list '(m))
(cl:defmethod utc_based-val ((m <GnssTimePulseInfoMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gnss_comm-msg:utc_based-val is deprecated.  Use gnss_comm-msg:utc_based instead.")
  (utc_based m))

(cl:ensure-generic-function 'time_sys-val :lambda-list '(m))
(cl:defmethod time_sys-val ((m <GnssTimePulseInfoMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gnss_comm-msg:time_sys-val is deprecated.  Use gnss_comm-msg:time_sys instead.")
  (time_sys m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GnssTimePulseInfoMsg>) ostream)
  "Serializes a message object of type '<GnssTimePulseInfoMsg>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'time) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'utc_based) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'time_sys)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'time_sys)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'time_sys)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'time_sys)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GnssTimePulseInfoMsg>) istream)
  "Deserializes a message object of type '<GnssTimePulseInfoMsg>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'time) istream)
    (cl:setf (cl:slot-value msg 'utc_based) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'time_sys)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'time_sys)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'time_sys)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'time_sys)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GnssTimePulseInfoMsg>)))
  "Returns string type for a message object of type '<GnssTimePulseInfoMsg>"
  "gnss_comm/GnssTimePulseInfoMsg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GnssTimePulseInfoMsg)))
  "Returns string type for a message object of type 'GnssTimePulseInfoMsg"
  "gnss_comm/GnssTimePulseInfoMsg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GnssTimePulseInfoMsg>)))
  "Returns md5sum for a message object of type '<GnssTimePulseInfoMsg>"
  "de306035e295e3c4b1e0771a216b495a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GnssTimePulseInfoMsg)))
  "Returns md5sum for a message object of type 'GnssTimePulseInfoMsg"
  "de306035e295e3c4b1e0771a216b495a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GnssTimePulseInfoMsg>)))
  "Returns full string definition for message of type '<GnssTimePulseInfoMsg>"
  (cl:format cl:nil "# This message contains information of UBX-TIM-TP message. ~%# reference: [1]. UBX-18010854-R08, page 156~%~%GnssTimeMsg time    # GNSS time of the next time pulse~%bool utc_based      # if the time is UTC (1=UTC, 0=GNSS)~%uint32 time_sys     # GNSS time reference system, if the time base is GNSS (utc_base=0)~%================================================================================~%MSG: gnss_comm/GnssTimeMsg~%# This message contains GNSS time expressed in the form of ~%# GNSS week number and time of week(in seconds)~%~%uint32 week~%float64 tow~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GnssTimePulseInfoMsg)))
  "Returns full string definition for message of type 'GnssTimePulseInfoMsg"
  (cl:format cl:nil "# This message contains information of UBX-TIM-TP message. ~%# reference: [1]. UBX-18010854-R08, page 156~%~%GnssTimeMsg time    # GNSS time of the next time pulse~%bool utc_based      # if the time is UTC (1=UTC, 0=GNSS)~%uint32 time_sys     # GNSS time reference system, if the time base is GNSS (utc_base=0)~%================================================================================~%MSG: gnss_comm/GnssTimeMsg~%# This message contains GNSS time expressed in the form of ~%# GNSS week number and time of week(in seconds)~%~%uint32 week~%float64 tow~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GnssTimePulseInfoMsg>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'time))
     1
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GnssTimePulseInfoMsg>))
  "Converts a ROS message object to a list"
  (cl:list 'GnssTimePulseInfoMsg
    (cl:cons ':time (time msg))
    (cl:cons ':utc_based (utc_based msg))
    (cl:cons ':time_sys (time_sys msg))
))
