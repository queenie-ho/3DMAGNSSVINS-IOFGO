;; Auto-generated. Do not edit!


(when (boundp 'gnss_comm::GnssGloEphemMsg)
  (if (not (find-package "GNSS_COMM"))
    (make-package "GNSS_COMM"))
  (shadow 'GnssGloEphemMsg (find-package "GNSS_COMM")))
(unless (find-package "GNSS_COMM::GNSSGLOEPHEMMSG")
  (make-package "GNSS_COMM::GNSSGLOEPHEMMSG"))

(in-package "ROS")
;;//! \htmlinclude GnssGloEphemMsg.msg.html


(defclass gnss_comm::GnssGloEphemMsg
  :super ros::object
  :slots (_sat _ttr _toe _freqo _iode _health _age _ura _pos_x _pos_y _pos_z _vel_x _vel_y _vel_z _acc_x _acc_y _acc_z _tau_n _gamma _delta_tau_n ))

(defmethod gnss_comm::GnssGloEphemMsg
  (:init
   (&key
    ((:sat __sat) 0)
    ((:ttr __ttr) (instance gnss_comm::GnssTimeMsg :init))
    ((:toe __toe) (instance gnss_comm::GnssTimeMsg :init))
    ((:freqo __freqo) 0)
    ((:iode __iode) 0)
    ((:health __health) 0)
    ((:age __age) 0)
    ((:ura __ura) 0.0)
    ((:pos_x __pos_x) 0.0)
    ((:pos_y __pos_y) 0.0)
    ((:pos_z __pos_z) 0.0)
    ((:vel_x __vel_x) 0.0)
    ((:vel_y __vel_y) 0.0)
    ((:vel_z __vel_z) 0.0)
    ((:acc_x __acc_x) 0.0)
    ((:acc_y __acc_y) 0.0)
    ((:acc_z __acc_z) 0.0)
    ((:tau_n __tau_n) 0.0)
    ((:gamma __gamma) 0.0)
    ((:delta_tau_n __delta_tau_n) 0.0)
    )
   (send-super :init)
   (setq _sat (round __sat))
   (setq _ttr __ttr)
   (setq _toe __toe)
   (setq _freqo (round __freqo))
   (setq _iode (round __iode))
   (setq _health (round __health))
   (setq _age (round __age))
   (setq _ura (float __ura))
   (setq _pos_x (float __pos_x))
   (setq _pos_y (float __pos_y))
   (setq _pos_z (float __pos_z))
   (setq _vel_x (float __vel_x))
   (setq _vel_y (float __vel_y))
   (setq _vel_z (float __vel_z))
   (setq _acc_x (float __acc_x))
   (setq _acc_y (float __acc_y))
   (setq _acc_z (float __acc_z))
   (setq _tau_n (float __tau_n))
   (setq _gamma (float __gamma))
   (setq _delta_tau_n (float __delta_tau_n))
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
  (:freqo
   (&optional __freqo)
   (if __freqo (setq _freqo __freqo)) _freqo)
  (:iode
   (&optional __iode)
   (if __iode (setq _iode __iode)) _iode)
  (:health
   (&optional __health)
   (if __health (setq _health __health)) _health)
  (:age
   (&optional __age)
   (if __age (setq _age __age)) _age)
  (:ura
   (&optional __ura)
   (if __ura (setq _ura __ura)) _ura)
  (:pos_x
   (&optional __pos_x)
   (if __pos_x (setq _pos_x __pos_x)) _pos_x)
  (:pos_y
   (&optional __pos_y)
   (if __pos_y (setq _pos_y __pos_y)) _pos_y)
  (:pos_z
   (&optional __pos_z)
   (if __pos_z (setq _pos_z __pos_z)) _pos_z)
  (:vel_x
   (&optional __vel_x)
   (if __vel_x (setq _vel_x __vel_x)) _vel_x)
  (:vel_y
   (&optional __vel_y)
   (if __vel_y (setq _vel_y __vel_y)) _vel_y)
  (:vel_z
   (&optional __vel_z)
   (if __vel_z (setq _vel_z __vel_z)) _vel_z)
  (:acc_x
   (&optional __acc_x)
   (if __acc_x (setq _acc_x __acc_x)) _acc_x)
  (:acc_y
   (&optional __acc_y)
   (if __acc_y (setq _acc_y __acc_y)) _acc_y)
  (:acc_z
   (&optional __acc_z)
   (if __acc_z (setq _acc_z __acc_z)) _acc_z)
  (:tau_n
   (&optional __tau_n)
   (if __tau_n (setq _tau_n __tau_n)) _tau_n)
  (:gamma
   (&optional __gamma)
   (if __gamma (setq _gamma __gamma)) _gamma)
  (:delta_tau_n
   (&optional __delta_tau_n)
   (if __delta_tau_n (setq _delta_tau_n __delta_tau_n)) _delta_tau_n)
  (:serialization-length
   ()
   (+
    ;; uint32 _sat
    4
    ;; gnss_comm/GnssTimeMsg _ttr
    (send _ttr :serialization-length)
    ;; gnss_comm/GnssTimeMsg _toe
    (send _toe :serialization-length)
    ;; int32 _freqo
    4
    ;; uint32 _iode
    4
    ;; uint32 _health
    4
    ;; uint32 _age
    4
    ;; float64 _ura
    8
    ;; float64 _pos_x
    8
    ;; float64 _pos_y
    8
    ;; float64 _pos_z
    8
    ;; float64 _vel_x
    8
    ;; float64 _vel_y
    8
    ;; float64 _vel_z
    8
    ;; float64 _acc_x
    8
    ;; float64 _acc_y
    8
    ;; float64 _acc_z
    8
    ;; float64 _tau_n
    8
    ;; float64 _gamma
    8
    ;; float64 _delta_tau_n
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
     ;; int32 _freqo
       (write-long _freqo s)
     ;; uint32 _iode
       (write-long _iode s)
     ;; uint32 _health
       (write-long _health s)
     ;; uint32 _age
       (write-long _age s)
     ;; float64 _ura
       (sys::poke _ura (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _pos_x
       (sys::poke _pos_x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _pos_y
       (sys::poke _pos_y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _pos_z
       (sys::poke _pos_z (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _vel_x
       (sys::poke _vel_x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _vel_y
       (sys::poke _vel_y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _vel_z
       (sys::poke _vel_z (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _acc_x
       (sys::poke _acc_x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _acc_y
       (sys::poke _acc_y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _acc_z
       (sys::poke _acc_z (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _tau_n
       (sys::poke _tau_n (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _gamma
       (sys::poke _gamma (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _delta_tau_n
       (sys::poke _delta_tau_n (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
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
   ;; int32 _freqo
     (setq _freqo (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _iode
     (setq _iode (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _health
     (setq _health (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _age
     (setq _age (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64 _ura
     (setq _ura (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _pos_x
     (setq _pos_x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _pos_y
     (setq _pos_y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _pos_z
     (setq _pos_z (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _vel_x
     (setq _vel_x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _vel_y
     (setq _vel_y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _vel_z
     (setq _vel_z (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _acc_x
     (setq _acc_x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _acc_y
     (setq _acc_y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _acc_z
     (setq _acc_z (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _tau_n
     (setq _tau_n (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _gamma
     (setq _gamma (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _delta_tau_n
     (setq _delta_tau_n (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get gnss_comm::GnssGloEphemMsg :md5sum-) "6893dee0d8b1c9325a6693f3488e0144")
(setf (get gnss_comm::GnssGloEphemMsg :datatype-) "gnss_comm/GnssGloEphemMsg")
(setf (get gnss_comm::GnssGloEphemMsg :definition-)
      "# This message contains GLONASS ephemeris data

uint32 sat
GnssTimeMsg ttr
GnssTimeMsg toe
int32  freqo
uint32 iode
uint32 health
uint32 age
float64 ura
float64 pos_x
float64 pos_y
float64 pos_z
float64 vel_x
float64 vel_y
float64 vel_z
float64 acc_x
float64 acc_y
float64 acc_z
float64 tau_n
float64 gamma
float64 delta_tau_n
================================================================================
MSG: gnss_comm/GnssTimeMsg
# This message contains GNSS time expressed in the form of 
# GNSS week number and time of week(in seconds)

uint32 week
float64 tow
")



(provide :gnss_comm/GnssGloEphemMsg "6893dee0d8b1c9325a6693f3488e0144")


