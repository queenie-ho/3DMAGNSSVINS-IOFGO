;; Auto-generated. Do not edit!


(when (boundp 'gnss_comm::GnssObsMsg)
  (if (not (find-package "GNSS_COMM"))
    (make-package "GNSS_COMM"))
  (shadow 'GnssObsMsg (find-package "GNSS_COMM")))
(unless (find-package "GNSS_COMM::GNSSOBSMSG")
  (make-package "GNSS_COMM::GNSSOBSMSG"))

(in-package "ROS")
;;//! \htmlinclude GnssObsMsg.msg.html


(defclass gnss_comm::GnssObsMsg
  :super ros::object
  :slots (_time _sat _freqs _CN0 _LLI _code _psr _psr_std _cp _cp_std _dopp _dopp_std _status ))

(defmethod gnss_comm::GnssObsMsg
  (:init
   (&key
    ((:time __time) (instance gnss_comm::GnssTimeMsg :init))
    ((:sat __sat) 0)
    ((:freqs __freqs) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:CN0 __CN0) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:LLI __LLI) (make-array 0 :initial-element 0 :element-type :char))
    ((:code __code) (make-array 0 :initial-element 0 :element-type :char))
    ((:psr __psr) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:psr_std __psr_std) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:cp __cp) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:cp_std __cp_std) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:dopp __dopp) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:dopp_std __dopp_std) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:status __status) (make-array 0 :initial-element 0 :element-type :char))
    )
   (send-super :init)
   (setq _time __time)
   (setq _sat (round __sat))
   (setq _freqs __freqs)
   (setq _CN0 __CN0)
   (setq _LLI __LLI)
   (setq _code __code)
   (setq _psr __psr)
   (setq _psr_std __psr_std)
   (setq _cp __cp)
   (setq _cp_std __cp_std)
   (setq _dopp __dopp)
   (setq _dopp_std __dopp_std)
   (setq _status __status)
   self)
  (:time
   (&rest __time)
   (if (keywordp (car __time))
       (send* _time __time)
     (progn
       (if __time (setq _time (car __time)))
       _time)))
  (:sat
   (&optional __sat)
   (if __sat (setq _sat __sat)) _sat)
  (:freqs
   (&optional __freqs)
   (if __freqs (setq _freqs __freqs)) _freqs)
  (:CN0
   (&optional __CN0)
   (if __CN0 (setq _CN0 __CN0)) _CN0)
  (:LLI
   (&optional __LLI)
   (if __LLI (setq _LLI __LLI)) _LLI)
  (:code
   (&optional __code)
   (if __code (setq _code __code)) _code)
  (:psr
   (&optional __psr)
   (if __psr (setq _psr __psr)) _psr)
  (:psr_std
   (&optional __psr_std)
   (if __psr_std (setq _psr_std __psr_std)) _psr_std)
  (:cp
   (&optional __cp)
   (if __cp (setq _cp __cp)) _cp)
  (:cp_std
   (&optional __cp_std)
   (if __cp_std (setq _cp_std __cp_std)) _cp_std)
  (:dopp
   (&optional __dopp)
   (if __dopp (setq _dopp __dopp)) _dopp)
  (:dopp_std
   (&optional __dopp_std)
   (if __dopp_std (setq _dopp_std __dopp_std)) _dopp_std)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:serialization-length
   ()
   (+
    ;; gnss_comm/GnssTimeMsg _time
    (send _time :serialization-length)
    ;; uint32 _sat
    4
    ;; float64[] _freqs
    (* 8    (length _freqs)) 4
    ;; float64[] _CN0
    (* 8    (length _CN0)) 4
    ;; uint8[] _LLI
    (* 1    (length _LLI)) 4
    ;; uint8[] _code
    (* 1    (length _code)) 4
    ;; float64[] _psr
    (* 8    (length _psr)) 4
    ;; float64[] _psr_std
    (* 8    (length _psr_std)) 4
    ;; float64[] _cp
    (* 8    (length _cp)) 4
    ;; float64[] _cp_std
    (* 8    (length _cp_std)) 4
    ;; float64[] _dopp
    (* 8    (length _dopp)) 4
    ;; float64[] _dopp_std
    (* 8    (length _dopp_std)) 4
    ;; uint8[] _status
    (* 1    (length _status)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; gnss_comm/GnssTimeMsg _time
       (send _time :serialize s)
     ;; uint32 _sat
       (write-long _sat s)
     ;; float64[] _freqs
     (write-long (length _freqs) s)
     (dotimes (i (length _freqs))
       (sys::poke (elt _freqs i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _CN0
     (write-long (length _CN0) s)
     (dotimes (i (length _CN0))
       (sys::poke (elt _CN0 i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; uint8[] _LLI
     (write-long (length _LLI) s)
     (princ _LLI s)
     ;; uint8[] _code
     (write-long (length _code) s)
     (princ _code s)
     ;; float64[] _psr
     (write-long (length _psr) s)
     (dotimes (i (length _psr))
       (sys::poke (elt _psr i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _psr_std
     (write-long (length _psr_std) s)
     (dotimes (i (length _psr_std))
       (sys::poke (elt _psr_std i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _cp
     (write-long (length _cp) s)
     (dotimes (i (length _cp))
       (sys::poke (elt _cp i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _cp_std
     (write-long (length _cp_std) s)
     (dotimes (i (length _cp_std))
       (sys::poke (elt _cp_std i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _dopp
     (write-long (length _dopp) s)
     (dotimes (i (length _dopp))
       (sys::poke (elt _dopp i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _dopp_std
     (write-long (length _dopp_std) s)
     (dotimes (i (length _dopp_std))
       (sys::poke (elt _dopp_std i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; uint8[] _status
     (write-long (length _status) s)
     (princ _status s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; gnss_comm/GnssTimeMsg _time
     (send _time :deserialize buf ptr-) (incf ptr- (send _time :serialization-length))
   ;; uint32 _sat
     (setq _sat (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64[] _freqs
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _freqs (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _freqs i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _CN0
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _CN0 (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _CN0 i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; uint8[] _LLI
   (let ((n (sys::peek buf ptr- :integer))) (incf ptr- 4)
     (setq _LLI (make-array n :element-type :char))
     (replace _LLI buf :start2 ptr-) (incf ptr- n))
   ;; uint8[] _code
   (let ((n (sys::peek buf ptr- :integer))) (incf ptr- 4)
     (setq _code (make-array n :element-type :char))
     (replace _code buf :start2 ptr-) (incf ptr- n))
   ;; float64[] _psr
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _psr (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _psr i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _psr_std
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _psr_std (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _psr_std i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _cp
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _cp (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _cp i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _cp_std
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _cp_std (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _cp_std i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _dopp
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _dopp (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _dopp i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _dopp_std
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _dopp_std (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _dopp_std i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; uint8[] _status
   (let ((n (sys::peek buf ptr- :integer))) (incf ptr- 4)
     (setq _status (make-array n :element-type :char))
     (replace _status buf :start2 ptr-) (incf ptr- n))
   ;;
   self)
  )

(setf (get gnss_comm::GnssObsMsg :md5sum-) "1989908f2a8a920a7a9e69d6804fb7e0")
(setf (get gnss_comm::GnssObsMsg :datatype-) "gnss_comm/GnssObsMsg")
(setf (get gnss_comm::GnssObsMsg :definition-)
      "# This message contains one-epoch measurements from one single satellite

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



(provide :gnss_comm/GnssObsMsg "1989908f2a8a920a7a9e69d6804fb7e0")


