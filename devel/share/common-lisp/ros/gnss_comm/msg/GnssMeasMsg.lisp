; Auto-generated. Do not edit!


(cl:in-package gnss_comm-msg)


;//! \htmlinclude GnssMeasMsg.msg.html

(cl:defclass <GnssMeasMsg> (roslisp-msg-protocol:ros-message)
  ((meas
    :reader meas
    :initarg :meas
    :type (cl:vector gnss_comm-msg:GnssObsMsg)
   :initform (cl:make-array 0 :element-type 'gnss_comm-msg:GnssObsMsg :initial-element (cl:make-instance 'gnss_comm-msg:GnssObsMsg))))
)

(cl:defclass GnssMeasMsg (<GnssMeasMsg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GnssMeasMsg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GnssMeasMsg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name gnss_comm-msg:<GnssMeasMsg> is deprecated: use gnss_comm-msg:GnssMeasMsg instead.")))

(cl:ensure-generic-function 'meas-val :lambda-list '(m))
(cl:defmethod meas-val ((m <GnssMeasMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gnss_comm-msg:meas-val is deprecated.  Use gnss_comm-msg:meas instead.")
  (meas m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GnssMeasMsg>) ostream)
  "Serializes a message object of type '<GnssMeasMsg>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'meas))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'meas))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GnssMeasMsg>) istream)
  "Deserializes a message object of type '<GnssMeasMsg>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'meas) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'meas)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'gnss_comm-msg:GnssObsMsg))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GnssMeasMsg>)))
  "Returns string type for a message object of type '<GnssMeasMsg>"
  "gnss_comm/GnssMeasMsg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GnssMeasMsg)))
  "Returns string type for a message object of type 'GnssMeasMsg"
  "gnss_comm/GnssMeasMsg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GnssMeasMsg>)))
  "Returns md5sum for a message object of type '<GnssMeasMsg>"
  "0eafeb530a3e6637722c4e296734c119")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GnssMeasMsg)))
  "Returns md5sum for a message object of type 'GnssMeasMsg"
  "0eafeb530a3e6637722c4e296734c119")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GnssMeasMsg>)))
  "Returns full string definition for message of type '<GnssMeasMsg>"
  (cl:format cl:nil "# This message contains one-epoch measurements from multiple satellites~%~%GnssObsMsg[] meas~%================================================================================~%MSG: gnss_comm/GnssObsMsg~%# This message contains one-epoch measurements from one single satellite~%~%GnssTimeMsg time    # measurement time~%uint32 sat          # satellite ID (define by `sat_no` function in `gnss_utility.hpp`)~%float64[] freqs     # observed frequencies [Hz]~%float64[] CN0       # carrier-to-noise density ratio (signal strength) [dB-Hz]~%uint8[] LLI         # lost-lock indicator (1=lost)~%uint8[] code        # channel code~%float64[] psr       # pseudorange measurement [m]~%float64[] psr_std   # pseudorange standard deviation [m]~%float64[] cp        # carrier phase measurement [cycle]~%float64[] cp_std    # carrier phase standard deviation [cycle]~%float64[] dopp      # Doppler measurement [Hz]~%float64[] dopp_std  # Doppler standard deviation [Hz]~%# tracking status. bit_0:psr valid, bit_1:cp valid, ~%# bit_2:half cp valid, bit_3:half cp subtracted~%uint8[]   status    ~%================================================================================~%MSG: gnss_comm/GnssTimeMsg~%# This message contains GNSS time expressed in the form of ~%# GNSS week number and time of week(in seconds)~%~%uint32 week~%float64 tow~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GnssMeasMsg)))
  "Returns full string definition for message of type 'GnssMeasMsg"
  (cl:format cl:nil "# This message contains one-epoch measurements from multiple satellites~%~%GnssObsMsg[] meas~%================================================================================~%MSG: gnss_comm/GnssObsMsg~%# This message contains one-epoch measurements from one single satellite~%~%GnssTimeMsg time    # measurement time~%uint32 sat          # satellite ID (define by `sat_no` function in `gnss_utility.hpp`)~%float64[] freqs     # observed frequencies [Hz]~%float64[] CN0       # carrier-to-noise density ratio (signal strength) [dB-Hz]~%uint8[] LLI         # lost-lock indicator (1=lost)~%uint8[] code        # channel code~%float64[] psr       # pseudorange measurement [m]~%float64[] psr_std   # pseudorange standard deviation [m]~%float64[] cp        # carrier phase measurement [cycle]~%float64[] cp_std    # carrier phase standard deviation [cycle]~%float64[] dopp      # Doppler measurement [Hz]~%float64[] dopp_std  # Doppler standard deviation [Hz]~%# tracking status. bit_0:psr valid, bit_1:cp valid, ~%# bit_2:half cp valid, bit_3:half cp subtracted~%uint8[]   status    ~%================================================================================~%MSG: gnss_comm/GnssTimeMsg~%# This message contains GNSS time expressed in the form of ~%# GNSS week number and time of week(in seconds)~%~%uint32 week~%float64 tow~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GnssMeasMsg>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'meas) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GnssMeasMsg>))
  "Converts a ROS message object to a list"
  (cl:list 'GnssMeasMsg
    (cl:cons ':meas (meas msg))
))
