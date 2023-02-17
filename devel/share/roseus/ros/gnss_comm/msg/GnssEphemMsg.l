;; Auto-generated. Do not edit!


(when (boundp 'gnss_comm::GnssEphemMsg)
  (if (not (find-package "GNSS_COMM"))
    (make-package "GNSS_COMM"))
  (shadow 'GnssEphemMsg (find-package "GNSS_COMM")))
(unless (find-package "GNSS_COMM::GNSSEPHEMMSG")
  (make-package "GNSS_COMM::GNSSEPHEMMSG"))

(in-package "ROS")
;;//! \htmlinclude GnssEphemMsg.msg.html


(defclass gnss_comm::GnssEphemMsg
  :super ros::object
  :slots (_sat _ttr _toe _toc _toe_tow _week _iode _iodc _health _code _ura _A _e _i0 _omg _OMG0 _M0 _delta_n _OMG_dot _i_dot _cuc _cus _crc _crs _cic _cis _af0 _af1 _af2 _tgd0 _tgd1 _A_dot _n_dot ))

(defmethod gnss_comm::GnssEphemMsg
  (:init
   (&key
    ((:sat __sat) 0)
    ((:ttr __ttr) (instance gnss_comm::GnssTimeMsg :init))
    ((:toe __toe) (instance gnss_comm::GnssTimeMsg :init))
    ((:toc __toc) (instance gnss_comm::GnssTimeMsg :init))
    ((:toe_tow __toe_tow) 0.0)
    ((:week __week) 0)
    ((:iode __iode) 0)
    ((:iodc __iodc) 0)
    ((:health __health) 0)
    ((:code __code) 0)
    ((:ura __ura) 0.0)
    ((:A __A) 0.0)
    ((:e __e) 0.0)
    ((:i0 __i0) 0.0)
    ((:omg __omg) 0.0)
    ((:OMG0 __OMG0) 0.0)
    ((:M0 __M0) 0.0)
    ((:delta_n __delta_n) 0.0)
    ((:OMG_dot __OMG_dot) 0.0)
    ((:i_dot __i_dot) 0.0)
    ((:cuc __cuc) 0.0)
    ((:cus __cus) 0.0)
    ((:crc __crc) 0.0)
    ((:crs __crs) 0.0)
    ((:cic __cic) 0.0)
    ((:cis __cis) 0.0)
    ((:af0 __af0) 0.0)
    ((:af1 __af1) 0.0)
    ((:af2 __af2) 0.0)
    ((:tgd0 __tgd0) 0.0)
    ((:tgd1 __tgd1) 0.0)
    ((:A_dot __A_dot) 0.0)
    ((:n_dot __n_dot) 0.0)
    )
   (send-super :init)
   (setq _sat (round __sat))
   (setq _ttr __ttr)
   (setq _toe __toe)
   (setq _toc __toc)
   (setq _toe_tow (float __toe_tow))
   (setq _week (round __week))
   (setq _iode (round __iode))
   (setq _iodc (round __iodc))
   (setq _health (round __health))
   (setq _code (round __code))
   (setq _ura (float __ura))
   (setq _A (float __A))
   (setq _e (float __e))
   (setq _i0 (float __i0))
   (setq _omg (float __omg))
   (setq _OMG0 (float __OMG0))
   (setq _M0 (float __M0))
   (setq _delta_n (float __delta_n))
   (setq _OMG_dot (float __OMG_dot))
   (setq _i_dot (float __i_dot))
   (setq _cuc (float __cuc))
   (setq _cus (float __cus))
   (setq _crc (float __crc))
   (setq _crs (float __crs))
   (setq _cic (float __cic))
   (setq _cis (float __cis))
   (setq _af0 (float __af0))
   (setq _af1 (float __af1))
   (setq _af2 (float __af2))
   (setq _tgd0 (float __tgd0))
   (setq _tgd1 (float __tgd1))
   (setq _A_dot (float __A_dot))
   (setq _n_dot (float __n_dot))
   self)
  (:sat
   (&optional __sat)
   (if __sat (setq _sat __sat)) _sat)
  (:ttr
   (&rest __ttr)
   (if (keywordp (car __ttr))
       (send* _ttr __ttr)
     (progn
       (if __ttr (setq _ttr (car __ttr)))
       _ttr)))
  (:toe
   (&rest __toe)
   (if (keywordp (car __toe))
       (send* _toe __toe)
     (progn
       (if __toe (setq _toe (car __toe)))
       _toe)))
  (:toc
   (&rest __toc)
   (if (keywordp (car __toc))
       (send* _toc __toc)
     (progn
       (if __toc (setq _toc (car __toc)))
       _toc)))
  (:toe_tow
   (&optional __toe_tow)
   (if __toe_tow (setq _toe_tow __toe_tow)) _toe_tow)
  (:week
   (&optional __week)
   (if __week (setq _week __week)) _week)
  (:iode
   (&optional __iode)
   (if __iode (setq _iode __iode)) _iode)
  (:iodc
   (&optional __iodc)
   (if __iodc (setq _iodc __iodc)) _iodc)
  (:health
   (&optional __health)
   (if __health (setq _health __health)) _health)
  (:code
   (&optional __code)
   (if __code (setq _code __code)) _code)
  (:ura
   (&optional __ura)
   (if __ura (setq _ura __ura)) _ura)
  (:A
   (&optional __A)
   (if __A (setq _A __A)) _A)
  (:e
   (&optional __e)
   (if __e (setq _e __e)) _e)
  (:i0
   (&optional __i0)
   (if __i0 (setq _i0 __i0)) _i0)
  (:omg
   (&optional __omg)
   (if __omg (setq _omg __omg)) _omg)
  (:OMG0
   (&optional __OMG0)
   (if __OMG0 (setq _OMG0 __OMG0)) _OMG0)
  (:M0
   (&optional __M0)
   (if __M0 (setq _M0 __M0)) _M0)
  (:delta_n
   (&optional __delta_n)
   (if __delta_n (setq _delta_n __delta_n)) _delta_n)
  (:OMG_dot
   (&optional __OMG_dot)
   (if __OMG_dot (setq _OMG_dot __OMG_dot)) _OMG_dot)
  (:i_dot
   (&optional __i_dot)
   (if __i_dot (setq _i_dot __i_dot)) _i_dot)
  (:cuc
   (&optional __cuc)
   (if __cuc (setq _cuc __cuc)) _cuc)
  (:cus
   (&optional __cus)
   (if __cus (setq _cus __cus)) _cus)
  (:crc
   (&optional __crc)
   (if __crc (setq _crc __crc)) _crc)
  (:crs
   (&optional __crs)
   (if __crs (setq _crs __crs)) _crs)
  (:cic
   (&optional __cic)
   (if __cic (setq _cic __cic)) _cic)
  (:cis
   (&optional __cis)
   (if __cis (setq _cis __cis)) _cis)
  (:af0
   (&optional __af0)
   (if __af0 (setq _af0 __af0)) _af0)
  (:af1
   (&optional __af1)
   (if __af1 (setq _af1 __af1)) _af1)
  (:af2
   (&optional __af2)
   (if __af2 (setq _af2 __af2)) _af2)
  (:tgd0
   (&optional __tgd0)
   (if __tgd0 (setq _tgd0 __tgd0)) _tgd0)
  (:tgd1
   (&optional __tgd1)
   (if __tgd1 (setq _tgd1 __tgd1)) _tgd1)
  (:A_dot
   (&optional __A_dot)
   (if __A_dot (setq _A_dot __A_dot)) _A_dot)
  (:n_dot
   (&optional __n_dot)
   (if __n_dot (setq _n_dot __n_dot)) _n_dot)
  (:serialization-length
   ()
   (+
    ;; uint32 _sat
    4
    ;; gnss_comm/GnssTimeMsg _ttr
    (send _ttr :serialization-length)
    ;; gnss_comm/GnssTimeMsg _toe
    (send _toe :serialization-length)
    ;; gnss_comm/GnssTimeMsg _toc
    (send _toc :serialization-length)
    ;; float64 _toe_tow
    8
    ;; uint32 _week
    4
    ;; uint32 _iode
    4
    ;; uint32 _iodc
    4
    ;; uint32 _health
    4
    ;; uint32 _code
    4
    ;; float64 _ura
    8
    ;; float64 _A
    8
    ;; float64 _e
    8
    ;; float64 _i0
    8
    ;; float64 _omg
    8
    ;; float64 _OMG0
    8
    ;; float64 _M0
    8
    ;; float64 _delta_n
    8
    ;; float64 _OMG_dot
    8
    ;; float64 _i_dot
    8
    ;; float64 _cuc
    8
    ;; float64 _cus
    8
    ;; float64 _crc
    8
    ;; float64 _crs
    8
    ;; float64 _cic
    8
    ;; float64 _cis
    8
    ;; float64 _af0
    8
    ;; float64 _af1
    8
    ;; float64 _af2
    8
    ;; float64 _tgd0
    8
    ;; float64 _tgd1
    8
    ;; float64 _A_dot
    8
    ;; float64 _n_dot
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _sat
       (write-long _sat s)
     ;; gnss_comm/GnssTimeMsg _ttr
       (send _ttr :serialize s)
     ;; gnss_comm/GnssTimeMsg _toe
       (send _toe :serialize s)
     ;; gnss_comm/GnssTimeMsg _toc
       (send _toc :serialize s)
     ;; float64 _toe_tow
       (sys::poke _toe_tow (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; uint32 _week
       (write-long _week s)
     ;; uint32 _iode
       (write-long _iode s)
     ;; uint32 _iodc
       (write-long _iodc s)
     ;; uint32 _health
       (write-long _health s)
     ;; uint32 _code
       (write-long _code s)
     ;; float64 _ura
       (sys::poke _ura (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _A
       (sys::poke _A (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _e
       (sys::poke _e (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _i0
       (sys::poke _i0 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _omg
       (sys::poke _omg (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _OMG0
       (sys::poke _OMG0 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _M0
       (sys::poke _M0 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _delta_n
       (sys::poke _delta_n (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _OMG_dot
       (sys::poke _OMG_dot (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _i_dot
       (sys::poke _i_dot (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _cuc
       (sys::poke _cuc (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _cus
       (sys::poke _cus (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _crc
       (sys::poke _crc (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _crs
       (sys::poke _crs (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _cic
       (sys::poke _cic (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _cis
       (sys::poke _cis (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _af0
       (sys::poke _af0 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _af1
       (sys::poke _af1 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _af2
       (sys::poke _af2 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _tgd0
       (sys::poke _tgd0 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _tgd1
       (sys::poke _tgd1 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _A_dot
       (sys::poke _A_dot (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _n_dot
       (sys::poke _n_dot (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _sat
     (setq _sat (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; gnss_comm/GnssTimeMsg _ttr
     (send _ttr :deserialize buf ptr-) (incf ptr- (send _ttr :serialization-length))
   ;; gnss_comm/GnssTimeMsg _toe
     (send _toe :deserialize buf ptr-) (incf ptr- (send _toe :serialization-length))
   ;; gnss_comm/GnssTimeMsg _toc
     (send _toc :deserialize buf ptr-) (incf ptr- (send _toc :serialization-length))
   ;; float64 _toe_tow
     (setq _toe_tow (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; uint32 _week
     (setq _week (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _iode
     (setq _iode (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _iodc
     (setq _iodc (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _health
     (setq _health (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _code
     (setq _code (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64 _ura
     (setq _ura (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _A
     (setq _A (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _e
     (setq _e (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _i0
     (setq _i0 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _omg
     (setq _omg (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _OMG0
     (setq _OMG0 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _M0
     (setq _M0 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _delta_n
     (setq _delta_n (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _OMG_dot
     (setq _OMG_dot (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _i_dot
     (setq _i_dot (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _cuc
     (setq _cuc (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _cus
     (setq _cus (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _crc
     (setq _crc (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _crs
     (setq _crs (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _cic
     (setq _cic (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _cis
     (setq _cis (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _af0
     (setq _af0 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _af1
     (setq _af1 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _af2
     (setq _af2 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _tgd0
     (setq _tgd0 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _tgd1
     (setq _tgd1 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _A_dot
     (setq _A_dot (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _n_dot
     (setq _n_dot (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get gnss_comm::GnssEphemMsg :md5sum-) "b4346f99e431c870e392a438684c0fe8")
(setf (get gnss_comm::GnssEphemMsg :datatype-) "gnss_comm/GnssEphemMsg")
(setf (get gnss_comm::GnssEphemMsg :definition-)
      "# This message contains GPS, Galileo and BeiDou ephemeris data

uint32 sat
GnssTimeMsg ttr
GnssTimeMsg toe
GnssTimeMsg toc
float64 toe_tow
uint32 week
uint32 iode
uint32 iodc
uint32 health
uint32 code
float64 ura
float64 A
float64 e
float64 i0
float64 omg
float64 OMG0
float64 M0
float64 delta_n
float64 OMG_dot
float64 i_dot
float64 cuc
float64 cus
float64 crc
float64 crs
float64 cic
float64 cis
float64 af0
float64 af1
float64 af2
float64 tgd0
float64 tgd1
float64 A_dot
float64 n_dot
================================================================================
MSG: gnss_comm/GnssTimeMsg
# This message contains GNSS time expressed in the form of 
# GNSS week number and time of week(in seconds)

uint32 week
float64 tow
")



(provide :gnss_comm/GnssEphemMsg "b4346f99e431c870e392a438684c0fe8")


