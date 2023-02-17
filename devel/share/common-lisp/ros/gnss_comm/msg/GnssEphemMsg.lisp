; Auto-generated. Do not edit!


(cl:in-package gnss_comm-msg)


;//! \htmlinclude GnssEphemMsg.msg.html

(cl:defclass <GnssEphemMsg> (roslisp-msg-protocol:ros-message)
  ((sat
    :reader sat
    :initarg :sat
    :type cl:integer
    :initform 0)
   (ttr
    :reader ttr
    :initarg :ttr
    :type gnss_comm-msg:GnssTimeMsg
    :initform (cl:make-instance 'gnss_comm-msg:GnssTimeMsg))
   (toe
    :reader toe
    :initarg :toe
    :type gnss_comm-msg:GnssTimeMsg
    :initform (cl:make-instance 'gnss_comm-msg:GnssTimeMsg))
   (toc
    :reader toc
    :initarg :toc
    :type gnss_comm-msg:GnssTimeMsg
    :initform (cl:make-instance 'gnss_comm-msg:GnssTimeMsg))
   (toe_tow
    :reader toe_tow
    :initarg :toe_tow
    :type cl:float
    :initform 0.0)
   (week
    :reader week
    :initarg :week
    :type cl:integer
    :initform 0)
   (iode
    :reader iode
    :initarg :iode
    :type cl:integer
    :initform 0)
   (iodc
    :reader iodc
    :initarg :iodc
    :type cl:integer
    :initform 0)
   (health
    :reader health
    :initarg :health
    :type cl:integer
    :initform 0)
   (code
    :reader code
    :initarg :code
    :type cl:integer
    :initform 0)
   (ura
    :reader ura
    :initarg :ura
    :type cl:float
    :initform 0.0)
   (A
    :reader A
    :initarg :A
    :type cl:float
    :initform 0.0)
   (e
    :reader e
    :initarg :e
    :type cl:float
    :initform 0.0)
   (i0
    :reader i0
    :initarg :i0
    :type cl:float
    :initform 0.0)
   (omg
    :reader omg
    :initarg :omg
    :type cl:float
    :initform 0.0)
   (OMG0
    :reader OMG0
    :initarg :OMG0
    :type cl:float
    :initform 0.0)
   (M0
    :reader M0
    :initarg :M0
    :type cl:float
    :initform 0.0)
   (delta_n
    :reader delta_n
    :initarg :delta_n
    :type cl:float
    :initform 0.0)
   (OMG_dot
    :reader OMG_dot
    :initarg :OMG_dot
    :type cl:float
    :initform 0.0)
   (i_dot
    :reader i_dot
    :initarg :i_dot
    :type cl:float
    :initform 0.0)
   (cuc
    :reader cuc
    :initarg :cuc
    :type cl:float
    :initform 0.0)
   (cus
    :reader cus
    :initarg :cus
    :type cl:float
    :initform 0.0)
   (crc
    :reader crc
    :initarg :crc
    :type cl:float
    :initform 0.0)
   (crs
    :reader crs
    :initarg :crs
    :type cl:float
    :initform 0.0)
   (cic
    :reader cic
    :initarg :cic
    :type cl:float
    :initform 0.0)
   (cis
    :reader cis
    :initarg :cis
    :type cl:float
    :initform 0.0)
   (af0
    :reader af0
    :initarg :af0
    :type cl:float
    :initform 0.0)
   (af1
    :reader af1
    :initarg :af1
    :type cl:float
    :initform 0.0)
   (af2
    :reader af2
    :initarg :af2
    :type cl:float
    :initform 0.0)
   (tgd0
    :reader tgd0
    :initarg :tgd0
    :type cl:float
    :initform 0.0)
   (tgd1
    :reader tgd1
    :initarg :tgd1
    :type cl:float
    :initform 0.0)
   (A_dot
    :reader A_dot
    :initarg :A_dot
    :type cl:float
    :initform 0.0)
   (n_dot
    :reader n_dot
    :initarg :n_dot
    :type cl:float
    :initform 0.0))
)

(cl:defclass GnssEphemMsg (<GnssEphemMsg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GnssEphemMsg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GnssEphemMsg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name gnss_comm-msg:<GnssEphemMsg> is deprecated: use gnss_comm-msg:GnssEphemMsg instead.")))

(cl:ensure-generic-function 'sat-val :lambda-list '(m))
(cl:defmethod sat-val ((m <GnssEphemMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gnss_comm-msg:sat-val is deprecated.  Use gnss_comm-msg:sat instead.")
  (sat m))

(cl:ensure-generic-function 'ttr-val :lambda-list '(m))
(cl:defmethod ttr-val ((m <GnssEphemMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gnss_comm-msg:ttr-val is deprecated.  Use gnss_comm-msg:ttr instead.")
  (ttr m))

(cl:ensure-generic-function 'toe-val :lambda-list '(m))
(cl:defmethod toe-val ((m <GnssEphemMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gnss_comm-msg:toe-val is deprecated.  Use gnss_comm-msg:toe instead.")
  (toe m))

(cl:ensure-generic-function 'toc-val :lambda-list '(m))
(cl:defmethod toc-val ((m <GnssEphemMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gnss_comm-msg:toc-val is deprecated.  Use gnss_comm-msg:toc instead.")
  (toc m))

(cl:ensure-generic-function 'toe_tow-val :lambda-list '(m))
(cl:defmethod toe_tow-val ((m <GnssEphemMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gnss_comm-msg:toe_tow-val is deprecated.  Use gnss_comm-msg:toe_tow instead.")
  (toe_tow m))

(cl:ensure-generic-function 'week-val :lambda-list '(m))
(cl:defmethod week-val ((m <GnssEphemMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gnss_comm-msg:week-val is deprecated.  Use gnss_comm-msg:week instead.")
  (week m))

(cl:ensure-generic-function 'iode-val :lambda-list '(m))
(cl:defmethod iode-val ((m <GnssEphemMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gnss_comm-msg:iode-val is deprecated.  Use gnss_comm-msg:iode instead.")
  (iode m))

(cl:ensure-generic-function 'iodc-val :lambda-list '(m))
(cl:defmethod iodc-val ((m <GnssEphemMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gnss_comm-msg:iodc-val is deprecated.  Use gnss_comm-msg:iodc instead.")
  (iodc m))

(cl:ensure-generic-function 'health-val :lambda-list '(m))
(cl:defmethod health-val ((m <GnssEphemMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gnss_comm-msg:health-val is deprecated.  Use gnss_comm-msg:health instead.")
  (health m))

(cl:ensure-generic-function 'code-val :lambda-list '(m))
(cl:defmethod code-val ((m <GnssEphemMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gnss_comm-msg:code-val is deprecated.  Use gnss_comm-msg:code instead.")
  (code m))

(cl:ensure-generic-function 'ura-val :lambda-list '(m))
(cl:defmethod ura-val ((m <GnssEphemMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gnss_comm-msg:ura-val is deprecated.  Use gnss_comm-msg:ura instead.")
  (ura m))

(cl:ensure-generic-function 'A-val :lambda-list '(m))
(cl:defmethod A-val ((m <GnssEphemMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gnss_comm-msg:A-val is deprecated.  Use gnss_comm-msg:A instead.")
  (A m))

(cl:ensure-generic-function 'e-val :lambda-list '(m))
(cl:defmethod e-val ((m <GnssEphemMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gnss_comm-msg:e-val is deprecated.  Use gnss_comm-msg:e instead.")
  (e m))

(cl:ensure-generic-function 'i0-val :lambda-list '(m))
(cl:defmethod i0-val ((m <GnssEphemMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gnss_comm-msg:i0-val is deprecated.  Use gnss_comm-msg:i0 instead.")
  (i0 m))

(cl:ensure-generic-function 'omg-val :lambda-list '(m))
(cl:defmethod omg-val ((m <GnssEphemMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gnss_comm-msg:omg-val is deprecated.  Use gnss_comm-msg:omg instead.")
  (omg m))

(cl:ensure-generic-function 'OMG0-val :lambda-list '(m))
(cl:defmethod OMG0-val ((m <GnssEphemMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gnss_comm-msg:OMG0-val is deprecated.  Use gnss_comm-msg:OMG0 instead.")
  (OMG0 m))

(cl:ensure-generic-function 'M0-val :lambda-list '(m))
(cl:defmethod M0-val ((m <GnssEphemMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gnss_comm-msg:M0-val is deprecated.  Use gnss_comm-msg:M0 instead.")
  (M0 m))

(cl:ensure-generic-function 'delta_n-val :lambda-list '(m))
(cl:defmethod delta_n-val ((m <GnssEphemMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gnss_comm-msg:delta_n-val is deprecated.  Use gnss_comm-msg:delta_n instead.")
  (delta_n m))

(cl:ensure-generic-function 'OMG_dot-val :lambda-list '(m))
(cl:defmethod OMG_dot-val ((m <GnssEphemMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gnss_comm-msg:OMG_dot-val is deprecated.  Use gnss_comm-msg:OMG_dot instead.")
  (OMG_dot m))

(cl:ensure-generic-function 'i_dot-val :lambda-list '(m))
(cl:defmethod i_dot-val ((m <GnssEphemMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gnss_comm-msg:i_dot-val is deprecated.  Use gnss_comm-msg:i_dot instead.")
  (i_dot m))

(cl:ensure-generic-function 'cuc-val :lambda-list '(m))
(cl:defmethod cuc-val ((m <GnssEphemMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gnss_comm-msg:cuc-val is deprecated.  Use gnss_comm-msg:cuc instead.")
  (cuc m))

(cl:ensure-generic-function 'cus-val :lambda-list '(m))
(cl:defmethod cus-val ((m <GnssEphemMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gnss_comm-msg:cus-val is deprecated.  Use gnss_comm-msg:cus instead.")
  (cus m))

(cl:ensure-generic-function 'crc-val :lambda-list '(m))
(cl:defmethod crc-val ((m <GnssEphemMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gnss_comm-msg:crc-val is deprecated.  Use gnss_comm-msg:crc instead.")
  (crc m))

(cl:ensure-generic-function 'crs-val :lambda-list '(m))
(cl:defmethod crs-val ((m <GnssEphemMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gnss_comm-msg:crs-val is deprecated.  Use gnss_comm-msg:crs instead.")
  (crs m))

(cl:ensure-generic-function 'cic-val :lambda-list '(m))
(cl:defmethod cic-val ((m <GnssEphemMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gnss_comm-msg:cic-val is deprecated.  Use gnss_comm-msg:cic instead.")
  (cic m))

(cl:ensure-generic-function 'cis-val :lambda-list '(m))
(cl:defmethod cis-val ((m <GnssEphemMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gnss_comm-msg:cis-val is deprecated.  Use gnss_comm-msg:cis instead.")
  (cis m))

(cl:ensure-generic-function 'af0-val :lambda-list '(m))
(cl:defmethod af0-val ((m <GnssEphemMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gnss_comm-msg:af0-val is deprecated.  Use gnss_comm-msg:af0 instead.")
  (af0 m))

(cl:ensure-generic-function 'af1-val :lambda-list '(m))
(cl:defmethod af1-val ((m <GnssEphemMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gnss_comm-msg:af1-val is deprecated.  Use gnss_comm-msg:af1 instead.")
  (af1 m))

(cl:ensure-generic-function 'af2-val :lambda-list '(m))
(cl:defmethod af2-val ((m <GnssEphemMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gnss_comm-msg:af2-val is deprecated.  Use gnss_comm-msg:af2 instead.")
  (af2 m))

(cl:ensure-generic-function 'tgd0-val :lambda-list '(m))
(cl:defmethod tgd0-val ((m <GnssEphemMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gnss_comm-msg:tgd0-val is deprecated.  Use gnss_comm-msg:tgd0 instead.")
  (tgd0 m))

(cl:ensure-generic-function 'tgd1-val :lambda-list '(m))
(cl:defmethod tgd1-val ((m <GnssEphemMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gnss_comm-msg:tgd1-val is deprecated.  Use gnss_comm-msg:tgd1 instead.")
  (tgd1 m))

(cl:ensure-generic-function 'A_dot-val :lambda-list '(m))
(cl:defmethod A_dot-val ((m <GnssEphemMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gnss_comm-msg:A_dot-val is deprecated.  Use gnss_comm-msg:A_dot instead.")
  (A_dot m))

(cl:ensure-generic-function 'n_dot-val :lambda-list '(m))
(cl:defmethod n_dot-val ((m <GnssEphemMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gnss_comm-msg:n_dot-val is deprecated.  Use gnss_comm-msg:n_dot instead.")
  (n_dot m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GnssEphemMsg>) ostream)
  "Serializes a message object of type '<GnssEphemMsg>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'sat)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'sat)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'sat)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'sat)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'ttr) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'toe) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'toc) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'toe_tow))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'week)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'week)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'week)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'week)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'iode)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'iode)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'iode)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'iode)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'iodc)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'iodc)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'iodc)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'iodc)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'health)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'health)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'health)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'health)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'code)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'code)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'code)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'code)) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'ura))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'A))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'e))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'i0))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'omg))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'OMG0))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'M0))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'delta_n))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'OMG_dot))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'i_dot))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'cuc))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'cus))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'crc))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'crs))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'cic))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'cis))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'af0))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'af1))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'af2))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'tgd0))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'tgd1))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'A_dot))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'n_dot))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GnssEphemMsg>) istream)
  "Deserializes a message object of type '<GnssEphemMsg>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'sat)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'sat)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'sat)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'sat)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'ttr) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'toe) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'toc) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'toe_tow) (roslisp-utils:decode-double-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'week)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'week)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'week)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'week)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'iode)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'iode)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'iode)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'iode)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'iodc)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'iodc)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'iodc)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'iodc)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'health)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'health)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'health)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'health)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'code)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'code)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'code)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'code)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'ura) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'A) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'e) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'i0) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'omg) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'OMG0) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'M0) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'delta_n) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'OMG_dot) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'i_dot) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'cuc) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'cus) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'crc) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'crs) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'cic) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'cis) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'af0) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'af1) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'af2) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'tgd0) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'tgd1) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'A_dot) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'n_dot) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GnssEphemMsg>)))
  "Returns string type for a message object of type '<GnssEphemMsg>"
  "gnss_comm/GnssEphemMsg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GnssEphemMsg)))
  "Returns string type for a message object of type 'GnssEphemMsg"
  "gnss_comm/GnssEphemMsg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GnssEphemMsg>)))
  "Returns md5sum for a message object of type '<GnssEphemMsg>"
  "b4346f99e431c870e392a438684c0fe8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GnssEphemMsg)))
  "Returns md5sum for a message object of type 'GnssEphemMsg"
  "b4346f99e431c870e392a438684c0fe8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GnssEphemMsg>)))
  "Returns full string definition for message of type '<GnssEphemMsg>"
  (cl:format cl:nil "# This message contains GPS, Galileo and BeiDou ephemeris data~%~%uint32 sat~%GnssTimeMsg ttr~%GnssTimeMsg toe~%GnssTimeMsg toc~%float64 toe_tow~%uint32 week~%uint32 iode~%uint32 iodc~%uint32 health~%uint32 code~%float64 ura~%float64 A~%float64 e~%float64 i0~%float64 omg~%float64 OMG0~%float64 M0~%float64 delta_n~%float64 OMG_dot~%float64 i_dot~%float64 cuc~%float64 cus~%float64 crc~%float64 crs~%float64 cic~%float64 cis~%float64 af0~%float64 af1~%float64 af2~%float64 tgd0~%float64 tgd1~%float64 A_dot~%float64 n_dot~%================================================================================~%MSG: gnss_comm/GnssTimeMsg~%# This message contains GNSS time expressed in the form of ~%# GNSS week number and time of week(in seconds)~%~%uint32 week~%float64 tow~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GnssEphemMsg)))
  "Returns full string definition for message of type 'GnssEphemMsg"
  (cl:format cl:nil "# This message contains GPS, Galileo and BeiDou ephemeris data~%~%uint32 sat~%GnssTimeMsg ttr~%GnssTimeMsg toe~%GnssTimeMsg toc~%float64 toe_tow~%uint32 week~%uint32 iode~%uint32 iodc~%uint32 health~%uint32 code~%float64 ura~%float64 A~%float64 e~%float64 i0~%float64 omg~%float64 OMG0~%float64 M0~%float64 delta_n~%float64 OMG_dot~%float64 i_dot~%float64 cuc~%float64 cus~%float64 crc~%float64 crs~%float64 cic~%float64 cis~%float64 af0~%float64 af1~%float64 af2~%float64 tgd0~%float64 tgd1~%float64 A_dot~%float64 n_dot~%================================================================================~%MSG: gnss_comm/GnssTimeMsg~%# This message contains GNSS time expressed in the form of ~%# GNSS week number and time of week(in seconds)~%~%uint32 week~%float64 tow~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GnssEphemMsg>))
  (cl:+ 0
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'ttr))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'toe))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'toc))
     8
     4
     4
     4
     4
     4
     8
     8
     8
     8
     8
     8
     8
     8
     8
     8
     8
     8
     8
     8
     8
     8
     8
     8
     8
     8
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GnssEphemMsg>))
  "Converts a ROS message object to a list"
  (cl:list 'GnssEphemMsg
    (cl:cons ':sat (sat msg))
    (cl:cons ':ttr (ttr msg))
    (cl:cons ':toe (toe msg))
    (cl:cons ':toc (toc msg))
    (cl:cons ':toe_tow (toe_tow msg))
    (cl:cons ':week (week msg))
    (cl:cons ':iode (iode msg))
    (cl:cons ':iodc (iodc msg))
    (cl:cons ':health (health msg))
    (cl:cons ':code (code msg))
    (cl:cons ':ura (ura msg))
    (cl:cons ':A (A msg))
    (cl:cons ':e (e msg))
    (cl:cons ':i0 (i0 msg))
    (cl:cons ':omg (omg msg))
    (cl:cons ':OMG0 (OMG0 msg))
    (cl:cons ':M0 (M0 msg))
    (cl:cons ':delta_n (delta_n msg))
    (cl:cons ':OMG_dot (OMG_dot msg))
    (cl:cons ':i_dot (i_dot msg))
    (cl:cons ':cuc (cuc msg))
    (cl:cons ':cus (cus msg))
    (cl:cons ':crc (crc msg))
    (cl:cons ':crs (crs msg))
    (cl:cons ':cic (cic msg))
    (cl:cons ':cis (cis msg))
    (cl:cons ':af0 (af0 msg))
    (cl:cons ':af1 (af1 msg))
    (cl:cons ':af2 (af2 msg))
    (cl:cons ':tgd0 (tgd0 msg))
    (cl:cons ':tgd1 (tgd1 msg))
    (cl:cons ':A_dot (A_dot msg))
    (cl:cons ':n_dot (n_dot msg))
))
