;; Auto-generated. Do not edit!


(when (boundp 'gnss_comm::GnssTimePulseInfoMsg)
  (if (not (find-package "GNSS_COMM"))
    (make-package "GNSS_COMM"))
  (shadow 'GnssTimePulseInfoMsg (find-package "GNSS_COMM")))
(unless (find-package "GNSS_COMM::GNSSTIMEPULSEINFOMSG")
  (make-package "GNSS_COMM::GNSSTIMEPULSEINFOMSG"))

(in-package "ROS")
;;//! \htmlinclude GnssTimePulseInfoMsg.msg.html


(defclass gnss_comm::GnssTimePulseInfoMsg
  :super ros::object
  :slots (_time _utc_based _time_sys ))

(defmethod gnss_comm::GnssTimePulseInfoMsg
  (:init
   (&key
    ((:time __time) (instance gnss_comm::GnssTimeMsg :init))
    ((:utc_based __utc_based) nil)
    ((:time_sys __time_sys) 0)
    )
   (send-super :init)
   (setq _time __time)
   (setq _utc_based __utc_based)
   (setq _time_sys (round __time_sys))
   self)
  (:time
   (&rest __time)
   (if (keywordp (car __time))
       (send* _time __time)
     (progn
       (if __time (setq _time (car __time)))
       _time)))
  (:utc_based
   (&optional __utc_based)
   (if __utc_based (setq _utc_based __utc_based)) _utc_based)
  (:time_sys
   (&optional __time_sys)
   (if __time_sys (setq _time_sys __time_sys)) _time_sys)
  (:serialization-length
   ()
   (+
    ;; gnss_comm/GnssTimeMsg _time
    (send _time :serialization-length)
    ;; bool _utc_based
    1
    ;; uint32 _time_sys
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; gnss_comm/GnssTimeMsg _time
       (send _time :serialize s)
     ;; bool _utc_based
       (if _utc_based (write-byte -1 s) (write-byte 0 s))
     ;; uint32 _time_sys
       (write-long _time_sys s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; gnss_comm/GnssTimeMsg _time
     (send _time :deserialize buf ptr-) (incf ptr- (send _time :serialization-length))
   ;; bool _utc_based
     (setq _utc_based (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; uint32 _time_sys
     (setq _time_sys (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get gnss_comm::GnssTimePulseInfoMsg :md5sum-) "de306035e295e3c4b1e0771a216b495a")
(setf (get gnss_comm::GnssTimePulseInfoMsg :datatype-) "gnss_comm/GnssTimePulseInfoMsg")
(setf (get gnss_comm::GnssTimePulseInfoMsg :definition-)
      "# This message contains information of UBX-TIM-TP message. 
# reference: [1]. UBX-18010854-R08, page 156

GnssTimeMsg time    # GNSS time of the next time pulse
bool utc_based      # if the time is UTC (1=UTC, 0=GNSS)
uint32 time_sys     # GNSS time reference system, if the time base is GNSS (utc_base=0)
================================================================================
MSG: gnss_comm/GnssTimeMsg
# This message contains GNSS time expressed in the form of 
# GNSS week number and time of week(in seconds)

uint32 week
float64 tow
")



(provide :gnss_comm/GnssTimePulseInfoMsg "de306035e295e3c4b1e0771a216b495a")


