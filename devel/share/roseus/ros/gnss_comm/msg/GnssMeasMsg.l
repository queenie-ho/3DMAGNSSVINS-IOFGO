;; Auto-generated. Do not edit!


(when (boundp 'gnss_comm::GnssMeasMsg)
  (if (not (find-package "GNSS_COMM"))
    (make-package "GNSS_COMM"))
  (shadow 'GnssMeasMsg (find-package "GNSS_COMM")))
(unless (find-package "GNSS_COMM::GNSSMEASMSG")
  (make-package "GNSS_COMM::GNSSMEASMSG"))

(in-package "ROS")
;;//! \htmlinclude GnssMeasMsg.msg.html


(defclass gnss_comm::GnssMeasMsg
  :super ros::object
  :slots (_meas ))

(defmethod gnss_comm::GnssMeasMsg
  (:init
   (&key
    ((:meas __meas) (let (r) (dotimes (i 0) (push (instance gnss_comm::GnssObsMsg :init) r)) r))
    )
   (send-super :init)
   (setq _meas __meas)
   self)
  (:meas
   (&rest __meas)
   (if (keywordp (car __meas))
       (send* _meas __meas)
     (progn
       (if __meas (setq _meas (car __meas)))
       _meas)))
  (:serialization-length
   ()
   (+
    ;; gnss_comm/GnssObsMsg[] _meas
    (apply #'+ (send-all _meas :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; gnss_comm/GnssObsMsg[] _meas
     (write-long (length _meas) s)
     (dolist (elem _meas)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; gnss_comm/GnssObsMsg[] _meas
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _meas (let (r) (dotimes (i n) (push (instance gnss_comm::GnssObsMsg :init) r)) r))
     (dolist (elem- _meas)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get gnss_comm::GnssMeasMsg :md5sum-) "0eafeb530a3e6637722c4e296734c119")
(setf (get gnss_comm::GnssMeasMsg :datatype-) "gnss_comm/GnssMeasMsg")
(setf (get gnss_comm::GnssMeasMsg :definition-)
      "# This message contains one-epoch measurements from multiple satellites

GnssObsMsg[] meas
================================================================================
MSG: gnss_comm/GnssObsMsg
# This message contains one-epoch measurements from one single satellite

GnssTimeMsg time    # measurement time
uint32 sat          # satellite ID (define by `sat_no` function in `gnss_utility.hpp`)
float64[] freqs     # observed frequencies [Hz]
float64[] CN0       # carrier-to-noise density ratio (signal strength) [dB-Hz]
uint8[] LLI         # lost-lock indicator (1=lost)
uint8[] code        # channel code
float64[] psr       # pseudorange measurement [m]
float64[] psr_std   # pseudorange standard deviation [m]
float64[] cp        # carrier phase measurement [cycle]
float64[] cp_std    # carrier phase standard deviation [cycle]
float64[] dopp      # Doppler measurement [Hz]
float64[] dopp_std  # Doppler standard deviation [Hz]
# tracking status. bit_0:psr valid, bit_1:cp valid, 
# bit_2:half cp valid, bit_3:half cp subtracted
uint8[]   status    
================================================================================
MSG: gnss_comm/GnssTimeMsg
# This message contains GNSS time expressed in the form of 
# GNSS week number and time of week(in seconds)

uint32 week
float64 tow
")



(provide :gnss_comm/GnssMeasMsg "0eafeb530a3e6637722c4e296734c119")


