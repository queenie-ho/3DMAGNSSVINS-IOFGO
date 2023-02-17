;; Auto-generated. Do not edit!


(when (boundp 'gnss_comm::GnssPVTSolnMsg)
  (if (not (find-package "GNSS_COMM"))
    (make-package "GNSS_COMM"))
  (shadow 'GnssPVTSolnMsg (find-package "GNSS_COMM")))
(unless (find-package "GNSS_COMM::GNSSPVTSOLNMSG")
  (make-package "GNSS_COMM::GNSSPVTSOLNMSG"))

(in-package "ROS")
;;//! \htmlinclude GnssPVTSolnMsg.msg.html


(defclass gnss_comm::GnssPVTSolnMsg
  :super ros::object
  :slots (_time _fix_type _valid_fix _diff_soln _carr_soln _num_sv _latitude _longitude _altitude _height_msl _h_acc _v_acc _p_dop _vel_n _vel_e _vel_d _vel_acc ))

(defmethod gnss_comm::GnssPVTSolnMsg
  (:init
   (&key
    ((:time __time) (instance gnss_comm::GnssTimeMsg :init))
    ((:fix_type __fix_type) 0)
    ((:valid_fix __valid_fix) nil)
    ((:diff_soln __diff_soln) nil)
    ((:carr_soln __carr_soln) 0)
    ((:num_sv __num_sv) 0)
    ((:latitude __latitude) 0.0)
    ((:longitude __longitude) 0.0)
    ((:altitude __altitude) 0.0)
    ((:height_msl __height_msl) 0.0)
    ((:h_acc __h_acc) 0.0)
    ((:v_acc __v_acc) 0.0)
    ((:p_dop __p_dop) 0.0)
    ((:vel_n __vel_n) 0.0)
    ((:vel_e __vel_e) 0.0)
    ((:vel_d __vel_d) 0.0)
    ((:vel_acc __vel_acc) 0.0)
    )
   (send-super :init)
   (setq _time __time)
   (setq _fix_type (round __fix_type))
   (setq _valid_fix __valid_fix)
   (setq _diff_soln __diff_soln)
   (setq _carr_soln (round __carr_soln))
   (setq _num_sv (round __num_sv))
   (setq _latitude (float __latitude))
   (setq _longitude (float __longitude))
   (setq _altitude (float __altitude))
   (setq _height_msl (float __height_msl))
   (setq _h_acc (float __h_acc))
   (setq _v_acc (float __v_acc))
   (setq _p_dop (float __p_dop))
   (setq _vel_n (float __vel_n))
   (setq _vel_e (float __vel_e))
   (setq _vel_d (float __vel_d))
   (setq _vel_acc (float __vel_acc))
   self)
  (:time
   (&rest __time)
   (if (keywordp (car __time))
       (send* _time __time)
     (progn
       (if __time (setq _time (car __time)))
       _time)))
  (:fix_type
   (&optional __fix_type)
   (if __fix_type (setq _fix_type __fix_type)) _fix_type)
  (:valid_fix
   (&optional __valid_fix)
   (if __valid_fix (setq _valid_fix __valid_fix)) _valid_fix)
  (:diff_soln
   (&optional __diff_soln)
   (if __diff_soln (setq _diff_soln __diff_soln)) _diff_soln)
  (:carr_soln
   (&optional __carr_soln)
   (if __carr_soln (setq _carr_soln __carr_soln)) _carr_soln)
  (:num_sv
   (&optional __num_sv)
   (if __num_sv (setq _num_sv __num_sv)) _num_sv)
  (:latitude
   (&optional __latitude)
   (if __latitude (setq _latitude __latitude)) _latitude)
  (:longitude
   (&optional __longitude)
   (if __longitude (setq _longitude __longitude)) _longitude)
  (:altitude
   (&optional __altitude)
   (if __altitude (setq _altitude __altitude)) _altitude)
  (:height_msl
   (&optional __height_msl)
   (if __height_msl (setq _height_msl __height_msl)) _height_msl)
  (:h_acc
   (&optional __h_acc)
   (if __h_acc (setq _h_acc __h_acc)) _h_acc)
  (:v_acc
   (&optional __v_acc)
   (if __v_acc (setq _v_acc __v_acc)) _v_acc)
  (:p_dop
   (&optional __p_dop)
   (if __p_dop (setq _p_dop __p_dop)) _p_dop)
  (:vel_n
   (&optional __vel_n)
   (if __vel_n (setq _vel_n __vel_n)) _vel_n)
  (:vel_e
   (&optional __vel_e)
   (if __vel_e (setq _vel_e __vel_e)) _vel_e)
  (:vel_d
   (&optional __vel_d)
   (if __vel_d (setq _vel_d __vel_d)) _vel_d)
  (:vel_acc
   (&optional __vel_acc)
   (if __vel_acc (setq _vel_acc __vel_acc)) _vel_acc)
  (:serialization-length
   ()
   (+
    ;; gnss_comm/GnssTimeMsg _time
    (send _time :serialization-length)
    ;; uint8 _fix_type
    1
    ;; bool _valid_fix
    1
    ;; bool _diff_soln
    1
    ;; uint8 _carr_soln
    1
    ;; uint8 _num_sv
    1
    ;; float64 _latitude
    8
    ;; float64 _longitude
    8
    ;; float64 _altitude
    8
    ;; float64 _height_msl
    8
    ;; float64 _h_acc
    8
    ;; float64 _v_acc
    8
    ;; float64 _p_dop
    8
    ;; float64 _vel_n
    8
    ;; float64 _vel_e
    8
    ;; float64 _vel_d
    8
    ;; float64 _vel_acc
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; gnss_comm/GnssTimeMsg _time
       (send _time :serialize s)
     ;; uint8 _fix_type
       (write-byte _fix_type s)
     ;; bool _valid_fix
       (if _valid_fix (write-byte -1 s) (write-byte 0 s))
     ;; bool _diff_soln
       (if _diff_soln (write-byte -1 s) (write-byte 0 s))
     ;; uint8 _carr_soln
       (write-byte _carr_soln s)
     ;; uint8 _num_sv
       (write-byte _num_sv s)
     ;; float64 _latitude
       (sys::poke _latitude (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _longitude
       (sys::poke _longitude (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _altitude
       (sys::poke _altitude (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _height_msl
       (sys::poke _height_msl (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _h_acc
       (sys::poke _h_acc (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _v_acc
       (sys::poke _v_acc (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _p_dop
       (sys::poke _p_dop (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _vel_n
       (sys::poke _vel_n (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _vel_e
       (sys::poke _vel_e (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _vel_d
       (sys::poke _vel_d (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _vel_acc
       (sys::poke _vel_acc (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; gnss_comm/GnssTimeMsg _time
     (send _time :deserialize buf ptr-) (incf ptr- (send _time :serialization-length))
   ;; uint8 _fix_type
     (setq _fix_type (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; bool _valid_fix
     (setq _valid_fix (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _diff_soln
     (setq _diff_soln (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; uint8 _carr_soln
     (setq _carr_soln (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _num_sv
     (setq _num_sv (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float64 _latitude
     (setq _latitude (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _longitude
     (setq _longitude (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _altitude
     (setq _altitude (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _height_msl
     (setq _height_msl (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _h_acc
     (setq _h_acc (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _v_acc
     (setq _v_acc (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _p_dop
     (setq _p_dop (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _vel_n
     (setq _vel_n (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _vel_e
     (setq _vel_e (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _vel_d
     (setq _vel_d (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _vel_acc
     (setq _vel_acc (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get gnss_comm::GnssPVTSolnMsg :md5sum-) "d18171357d7a159f76d4d7c0b12fb631")
(setf (get gnss_comm::GnssPVTSolnMsg :datatype-) "gnss_comm/GnssPVTSolnMsg")
(setf (get gnss_comm::GnssPVTSolnMsg :definition-)
      "# This message contains information of UBX-NAV-PVT message. 
# reference: [1]. UBX-18010854-R08, page 132

GnssTimeMsg time    # GNSS time of the navigation epoch
# GNSS fix type (0=no fix, 1=dead reckoning only, 2=2D-fix, 3=3D-fix, 
# 4=GNSS+dead reckoning combined, 5=time only fix)
uint8   fix_type
bool    valid_fix   # if fix valid (1=valid fix)
bool    diff_soln   # if differential correction were applied (1=applied)
uint8   carr_soln   # carrier phase range solution status (0=no carrier phase, 1=float, 2=fix)
uint8   num_sv      # number of satellites used in the solution
float64 latitude    # latitude [degree]
float64 longitude   # longitude [degree]
float64 altitude    # height above ellipsoid [m]
float64 height_msl  # height above mean sea level [m]
float64 h_acc       # horizontal accuracy estimate [m]
float64 v_acc       # vertical accuracy estimate [m]
float64 p_dop       # Position DOP
float64 vel_n       # NED north velocity [m/s]
float64 vel_e       # NED east velocity [m/s]
float64 vel_d       # NED down velocity [m/s]
float64 vel_acc     # speed accuracy estimate [m/s]

================================================================================
MSG: gnss_comm/GnssTimeMsg
# This message contains GNSS time expressed in the form of 
# GNSS week number and time of week(in seconds)

uint32 week
float64 tow
")



(provide :gnss_comm/GnssPVTSolnMsg "d18171357d7a159f76d4d7c0b12fb631")


