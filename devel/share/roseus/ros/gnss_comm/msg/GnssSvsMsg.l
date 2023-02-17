;; Auto-generated. Do not edit!


(when (boundp 'gnss_comm::GnssSvsMsg)
  (if (not (find-package "GNSS_COMM"))
    (make-package "GNSS_COMM"))
  (shadow 'GnssSvsMsg (find-package "GNSS_COMM")))
(unless (find-package "GNSS_COMM::GNSSSVSMSG")
  (make-package "GNSS_COMM::GNSSSVSMSG"))

(in-package "ROS")
;;//! \htmlinclude GnssSvsMsg.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass gnss_comm::GnssSvsMsg
  :super ros::object
  :slots (_header _sat _freqo _health _elev_degree _az_degree _sig_mask ))

(defmethod gnss_comm::GnssSvsMsg
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:sat __sat) (make-array 0 :initial-element 0 :element-type :integer))
    ((:freqo __freqo) (make-array 0 :initial-element 0 :element-type :integer))
    ((:health __health) (let (r) (dotimes (i 0) (push nil r)) r))
    ((:elev_degree __elev_degree) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:az_degree __az_degree) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:sig_mask __sig_mask) (make-array 0 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _header __header)
   (setq _sat __sat)
   (setq _freqo __freqo)
   (setq _health __health)
   (setq _elev_degree __elev_degree)
   (setq _az_degree __az_degree)
   (setq _sig_mask __sig_mask)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:sat
   (&optional __sat)
   (if __sat (setq _sat __sat)) _sat)
  (:freqo
   (&optional __freqo)
   (if __freqo (setq _freqo __freqo)) _freqo)
  (:health
   (&optional __health)
   (if __health (setq _health __health)) _health)
  (:elev_degree
   (&optional __elev_degree)
   (if __elev_degree (setq _elev_degree __elev_degree)) _elev_degree)
  (:az_degree
   (&optional __az_degree)
   (if __az_degree (setq _az_degree __az_degree)) _az_degree)
  (:sig_mask
   (&optional __sig_mask)
   (if __sig_mask (setq _sig_mask __sig_mask)) _sig_mask)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint32[] _sat
    (* 4    (length _sat)) 4
    ;; uint32[] _freqo
    (* 4    (length _freqo)) 4
    ;; bool[] _health
    (* 1    (length _health)) 4
    ;; float64[] _elev_degree
    (* 8    (length _elev_degree)) 4
    ;; float64[] _az_degree
    (* 8    (length _az_degree)) 4
    ;; uint32[] _sig_mask
    (* 4    (length _sig_mask)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint32[] _sat
     (write-long (length _sat) s)
     (dotimes (i (length _sat))
       (write-long (elt _sat i) s)
       )
     ;; uint32[] _freqo
     (write-long (length _freqo) s)
     (dotimes (i (length _freqo))
       (write-long (elt _freqo i) s)
       )
     ;; bool[] _health
     (write-long (length _health) s)
     (dotimes (i (length _health))
       (if (elt _health i) (write-byte -1 s) (write-byte 0 s))
       )
     ;; float64[] _elev_degree
     (write-long (length _elev_degree) s)
     (dotimes (i (length _elev_degree))
       (sys::poke (elt _elev_degree i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _az_degree
     (write-long (length _az_degree) s)
     (dotimes (i (length _az_degree))
       (sys::poke (elt _az_degree i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; uint32[] _sig_mask
     (write-long (length _sig_mask) s)
     (dotimes (i (length _sig_mask))
       (write-long (elt _sig_mask i) s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint32[] _sat
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _sat (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _sat i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; uint32[] _freqo
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _freqo (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _freqo i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; bool[] _health
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _health (make-list n))
     (dotimes (i n)
     (setf (elt _health i) (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
     ))
   ;; float64[] _elev_degree
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _elev_degree (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _elev_degree i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _az_degree
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _az_degree (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _az_degree i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; uint32[] _sig_mask
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _sig_mask (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _sig_mask i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(setf (get gnss_comm::GnssSvsMsg :md5sum-) "610ee24e5811902378e70f98580c022c")
(setf (get gnss_comm::GnssSvsMsg :datatype-) "gnss_comm/GnssSvsMsg")
(setf (get gnss_comm::GnssSvsMsg :definition-)
      "Header header
uint32[]    sat
uint32[]    freqo
bool[]      health
float64[]   elev_degree
float64[]   az_degree
uint32[]    sig_mask
================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

")



(provide :gnss_comm/GnssSvsMsg "610ee24e5811902378e70f98580c022c")


