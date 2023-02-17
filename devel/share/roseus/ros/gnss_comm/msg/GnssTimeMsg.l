;; Auto-generated. Do not edit!


(when (boundp 'gnss_comm::GnssTimeMsg)
  (if (not (find-package "GNSS_COMM"))
    (make-package "GNSS_COMM"))
  (shadow 'GnssTimeMsg (find-package "GNSS_COMM")))
(unless (find-package "GNSS_COMM::GNSSTIMEMSG")
  (make-package "GNSS_COMM::GNSSTIMEMSG"))

(in-package "ROS")
;;//! \htmlinclude GnssTimeMsg.msg.html


(defclass gnss_comm::GnssTimeMsg
  :super ros::object
  :slots (_week _tow ))

(defmethod gnss_comm::GnssTimeMsg
  (:init
   (&key
    ((:week __week) 0)
    ((:tow __tow) 0.0)
    )
   (send-super :init)
   (setq _week (round __week))
   (setq _tow (float __tow))
   self)
  (:week
   (&optional __week)
   (if __week (setq _week __week)) _week)
  (:tow
   (&optional __tow)
   (if __tow (setq _tow __tow)) _tow)
  (:serialization-length
   ()
   (+
    ;; uint32 _week
    4
    ;; float64 _tow
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _week
       (write-long _week s)
     ;; float64 _tow
       (sys::poke _tow (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _week
     (setq _week (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64 _tow
     (setq _tow (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get gnss_comm::GnssTimeMsg :md5sum-) "bf90d33163be4f350369edc1830837b4")
(setf (get gnss_comm::GnssTimeMsg :datatype-) "gnss_comm/GnssTimeMsg")
(setf (get gnss_comm::GnssTimeMsg :definition-)
      "# This message contains GNSS time expressed in the form of 
# GNSS week number and time of week(in seconds)

uint32 week
float64 tow
")



(provide :gnss_comm/GnssTimeMsg "bf90d33163be4f350369edc1830837b4")


