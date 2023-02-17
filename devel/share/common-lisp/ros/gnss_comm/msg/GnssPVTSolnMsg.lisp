; Auto-generated. Do not edit!


(cl:in-package gnss_comm-msg)


;//! \htmlinclude GnssPVTSolnMsg.msg.html

(cl:defclass <GnssPVTSolnMsg> (roslisp-msg-protocol:ros-message)
  ((time
    :reader time
    :initarg :time
    :type gnss_comm-msg:GnssTimeMsg
    :initform (cl:make-instance 'gnss_comm-msg:GnssTimeMsg))
   (fix_type
    :reader fix_type
    :initarg :fix_type
    :type cl:fixnum
    :initform 0)
   (valid_fix
    :reader valid_fix
    :initarg :valid_fix
    :type cl:boolean
    :initform cl:nil)
   (diff_soln
    :reader diff_soln
    :initarg :diff_soln
    :type cl:boolean
    :initform cl:nil)
   (carr_soln
    :reader carr_soln
    :initarg :carr_soln
    :type cl:fixnum
    :initform 0)
   (num_sv
    :reader num_sv
    :initarg :num_sv
    :type cl:fixnum
    :initform 0)
   (latitude
    :reader latitude
    :initarg :latitude
    :type cl:float
    :initform 0.0)
   (longitude
    :reader longitude
    :initarg :longitude
    :type cl:float
    :initform 0.0)
   (altitude
    :reader altitude
    :initarg :altitude
    :type cl:float
    :initform 0.0)
   (height_msl
    :reader height_msl
    :initarg :height_msl
    :type cl:float
    :initform 0.0)
   (h_acc
    :reader h_acc
    :initarg :h_acc
    :type cl:float
    :initform 0.0)
   (v_acc
    :reader v_acc
    :initarg :v_acc
    :type cl:float
    :initform 0.0)
   (p_dop
    :reader p_dop
    :initarg :p_dop
    :type cl:float
    :initform 0.0)
   (vel_n
    :reader vel_n
    :initarg :vel_n
    :type cl:float
    :initform 0.0)
   (vel_e
    :reader vel_e
    :initarg :vel_e
    :type cl:float
    :initform 0.0)
   (vel_d
    :reader vel_d
    :initarg :vel_d
    :type cl:float
    :initform 0.0)
   (vel_acc
    :reader vel_acc
    :initarg :vel_acc
    :type cl:float
    :initform 0.0))
)

(cl:defclass GnssPVTSolnMsg (<GnssPVTSolnMsg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GnssPVTSolnMsg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GnssPVTSolnMsg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name gnss_comm-msg:<GnssPVTSolnMsg> is deprecated: use gnss_comm-msg:GnssPVTSolnMsg instead.")))

(cl:ensure-generic-function 'time-val :lambda-list '(m))
(cl:defmethod time-val ((m <GnssPVTSolnMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gnss_comm-msg:time-val is deprecated.  Use gnss_comm-msg:time instead.")
  (time m))

(cl:ensure-generic-function 'fix_type-val :lambda-list '(m))
(cl:defmethod fix_type-val ((m <GnssPVTSolnMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gnss_comm-msg:fix_type-val is deprecated.  Use gnss_comm-msg:fix_type instead.")
  (fix_type m))

(cl:ensure-generic-function 'valid_fix-val :lambda-list '(m))
(cl:defmethod valid_fix-val ((m <GnssPVTSolnMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gnss_comm-msg:valid_fix-val is deprecated.  Use gnss_comm-msg:valid_fix instead.")
  (valid_fix m))

(cl:ensure-generic-function 'diff_soln-val :lambda-list '(m))
(cl:defmethod diff_soln-val ((m <GnssPVTSolnMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gnss_comm-msg:diff_soln-val is deprecated.  Use gnss_comm-msg:diff_soln instead.")
  (diff_soln m))

(cl:ensure-generic-function 'carr_soln-val :lambda-list '(m))
(cl:defmethod carr_soln-val ((m <GnssPVTSolnMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gnss_comm-msg:carr_soln-val is deprecated.  Use gnss_comm-msg:carr_soln instead.")
  (carr_soln m))

(cl:ensure-generic-function 'num_sv-val :lambda-list '(m))
(cl:defmethod num_sv-val ((m <GnssPVTSolnMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gnss_comm-msg:num_sv-val is deprecated.  Use gnss_comm-msg:num_sv instead.")
  (num_sv m))

(cl:ensure-generic-function 'latitude-val :lambda-list '(m))
(cl:defmethod latitude-val ((m <GnssPVTSolnMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gnss_comm-msg:latitude-val is deprecated.  Use gnss_comm-msg:latitude instead.")
  (latitude m))

(cl:ensure-generic-function 'longitude-val :lambda-list '(m))
(cl:defmethod longitude-val ((m <GnssPVTSolnMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gnss_comm-msg:longitude-val is deprecated.  Use gnss_comm-msg:longitude instead.")
  (longitude m))

(cl:ensure-generic-function 'altitude-val :lambda-list '(m))
(cl:defmethod altitude-val ((m <GnssPVTSolnMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gnss_comm-msg:altitude-val is deprecated.  Use gnss_comm-msg:altitude instead.")
  (altitude m))

(cl:ensure-generic-function 'height_msl-val :lambda-list '(m))
(cl:defmethod height_msl-val ((m <GnssPVTSolnMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gnss_comm-msg:height_msl-val is deprecated.  Use gnss_comm-msg:height_msl instead.")
  (height_msl m))

(cl:ensure-generic-function 'h_acc-val :lambda-list '(m))
(cl:defmethod h_acc-val ((m <GnssPVTSolnMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gnss_comm-msg:h_acc-val is deprecated.  Use gnss_comm-msg:h_acc instead.")
  (h_acc m))

(cl:ensure-generic-function 'v_acc-val :lambda-list '(m))
(cl:defmethod v_acc-val ((m <GnssPVTSolnMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gnss_comm-msg:v_acc-val is deprecated.  Use gnss_comm-msg:v_acc instead.")
  (v_acc m))

(cl:ensure-generic-function 'p_dop-val :lambda-list '(m))
(cl:defmethod p_dop-val ((m <GnssPVTSolnMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gnss_comm-msg:p_dop-val is deprecated.  Use gnss_comm-msg:p_dop instead.")
  (p_dop m))

(cl:ensure-generic-function 'vel_n-val :lambda-list '(m))
(cl:defmethod vel_n-val ((m <GnssPVTSolnMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gnss_comm-msg:vel_n-val is deprecated.  Use gnss_comm-msg:vel_n instead.")
  (vel_n m))

(cl:ensure-generic-function 'vel_e-val :lambda-list '(m))
(cl:defmethod vel_e-val ((m <GnssPVTSolnMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gnss_comm-msg:vel_e-val is deprecated.  Use gnss_comm-msg:vel_e instead.")
  (vel_e m))

(cl:ensure-generic-function 'vel_d-val :lambda-list '(m))
(cl:defmethod vel_d-val ((m <GnssPVTSolnMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gnss_comm-msg:vel_d-val is deprecated.  Use gnss_comm-msg:vel_d instead.")
  (vel_d m))

(cl:ensure-generic-function 'vel_acc-val :lambda-list '(m))
(cl:defmethod vel_acc-val ((m <GnssPVTSolnMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gnss_comm-msg:vel_acc-val is deprecated.  Use gnss_comm-msg:vel_acc instead.")
  (vel_acc m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GnssPVTSolnMsg>) ostream)
  "Serializes a message object of type '<GnssPVTSolnMsg>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'time) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'fix_type)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'valid_fix) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'diff_soln) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'carr_soln)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'num_sv)) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'latitude))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'longitude))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'altitude))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'height_msl))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'h_acc))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'v_acc))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'p_dop))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'vel_n))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'vel_e))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'vel_d))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'vel_acc))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GnssPVTSolnMsg>) istream)
  "Deserializes a message object of type '<GnssPVTSolnMsg>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'time) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'fix_type)) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'valid_fix) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'diff_soln) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'carr_soln)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'num_sv)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'latitude) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'longitude) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'altitude) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'height_msl) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'h_acc) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'v_acc) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'p_dop) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'vel_n) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'vel_e) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'vel_d) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'vel_acc) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GnssPVTSolnMsg>)))
  "Returns string type for a message object of type '<GnssPVTSolnMsg>"
  "gnss_comm/GnssPVTSolnMsg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GnssPVTSolnMsg)))
  "Returns string type for a message object of type 'GnssPVTSolnMsg"
  "gnss_comm/GnssPVTSolnMsg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GnssPVTSolnMsg>)))
  "Returns md5sum for a message object of type '<GnssPVTSolnMsg>"
  "d18171357d7a159f76d4d7c0b12fb631")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GnssPVTSolnMsg)))
  "Returns md5sum for a message object of type 'GnssPVTSolnMsg"
  "d18171357d7a159f76d4d7c0b12fb631")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GnssPVTSolnMsg>)))
  "Returns full string definition for message of type '<GnssPVTSolnMsg>"
  (cl:format cl:nil "# This message contains information of UBX-NAV-PVT message. ~%# reference: [1]. UBX-18010854-R08, page 132~%~%GnssTimeMsg time    # GNSS time of the navigation epoch~%# GNSS fix type (0=no fix, 1=dead reckoning only, 2=2D-fix, 3=3D-fix, ~%# 4=GNSS+dead reckoning combined, 5=time only fix)~%uint8   fix_type~%bool    valid_fix   # if fix valid (1=valid fix)~%bool    diff_soln   # if differential correction were applied (1=applied)~%uint8   carr_soln   # carrier phase range solution status (0=no carrier phase, 1=float, 2=fix)~%uint8   num_sv      # number of satellites used in the solution~%float64 latitude    # latitude [degree]~%float64 longitude   # longitude [degree]~%float64 altitude    # height above ellipsoid [m]~%float64 height_msl  # height above mean sea level [m]~%float64 h_acc       # horizontal accuracy estimate [m]~%float64 v_acc       # vertical accuracy estimate [m]~%float64 p_dop       # Position DOP~%float64 vel_n       # NED north velocity [m/s]~%float64 vel_e       # NED east velocity [m/s]~%float64 vel_d       # NED down velocity [m/s]~%float64 vel_acc     # speed accuracy estimate [m/s]~%~%================================================================================~%MSG: gnss_comm/GnssTimeMsg~%# This message contains GNSS time expressed in the form of ~%# GNSS week number and time of week(in seconds)~%~%uint32 week~%float64 tow~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GnssPVTSolnMsg)))
  "Returns full string definition for message of type 'GnssPVTSolnMsg"
  (cl:format cl:nil "# This message contains information of UBX-NAV-PVT message. ~%# reference: [1]. UBX-18010854-R08, page 132~%~%GnssTimeMsg time    # GNSS time of the navigation epoch~%# GNSS fix type (0=no fix, 1=dead reckoning only, 2=2D-fix, 3=3D-fix, ~%# 4=GNSS+dead reckoning combined, 5=time only fix)~%uint8   fix_type~%bool    valid_fix   # if fix valid (1=valid fix)~%bool    diff_soln   # if differential correction were applied (1=applied)~%uint8   carr_soln   # carrier phase range solution status (0=no carrier phase, 1=float, 2=fix)~%uint8   num_sv      # number of satellites used in the solution~%float64 latitude    # latitude [degree]~%float64 longitude   # longitude [degree]~%float64 altitude    # height above ellipsoid [m]~%float64 height_msl  # height above mean sea level [m]~%float64 h_acc       # horizontal accuracy estimate [m]~%float64 v_acc       # vertical accuracy estimate [m]~%float64 p_dop       # Position DOP~%float64 vel_n       # NED north velocity [m/s]~%float64 vel_e       # NED east velocity [m/s]~%float64 vel_d       # NED down velocity [m/s]~%float64 vel_acc     # speed accuracy estimate [m/s]~%~%================================================================================~%MSG: gnss_comm/GnssTimeMsg~%# This message contains GNSS time expressed in the form of ~%# GNSS week number and time of week(in seconds)~%~%uint32 week~%float64 tow~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GnssPVTSolnMsg>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'time))
     1
     1
     1
     1
     1
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
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GnssPVTSolnMsg>))
  "Converts a ROS message object to a list"
  (cl:list 'GnssPVTSolnMsg
    (cl:cons ':time (time msg))
    (cl:cons ':fix_type (fix_type msg))
    (cl:cons ':valid_fix (valid_fix msg))
    (cl:cons ':diff_soln (diff_soln msg))
    (cl:cons ':carr_soln (carr_soln msg))
    (cl:cons ':num_sv (num_sv msg))
    (cl:cons ':latitude (latitude msg))
    (cl:cons ':longitude (longitude msg))
    (cl:cons ':altitude (altitude msg))
    (cl:cons ':height_msl (height_msl msg))
    (cl:cons ':h_acc (h_acc msg))
    (cl:cons ':v_acc (v_acc msg))
    (cl:cons ':p_dop (p_dop msg))
    (cl:cons ':vel_n (vel_n msg))
    (cl:cons ':vel_e (vel_e msg))
    (cl:cons ':vel_d (vel_d msg))
    (cl:cons ':vel_acc (vel_acc msg))
))
