;; Auto-generated. Do not edit!


(when (boundp 'gnss_comm::GnssBestXYZMsg)
  (if (not (find-package "GNSS_COMM"))
    (make-package "GNSS_COMM"))
  (shadow 'GnssBestXYZMsg (find-package "GNSS_COMM")))
(unless (find-package "GNSS_COMM::GNSSBESTXYZMSG")
  (make-package "GNSS_COMM::GNSSBESTXYZMSG"))

(in-package "ROS")
;;//! \htmlinclude GnssBestXYZMsg.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass gnss_comm::GnssBestXYZMsg
  :super ros::object
  :slots (_header _pos _pos_sigma _vel _vel_sigma _num_svs ))

(defmethod gnss_comm::GnssBestXYZMsg
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:pos __pos) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:pos_sigma __pos_sigma) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:vel __vel) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:vel_sigma __vel_sigma) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:num_svs __num_svs) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _pos __pos)
   (setq _pos_sigma __pos_sigma)
   (setq _vel __vel)
   (setq _vel_sigma __vel_sigma)
   (setq _num_svs (round __num_svs))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:pos
   (&optional __pos)
   (if __pos (setq _pos __pos)) _pos)
  (:pos_sigma
   (&optional __pos_sigma)
   (if __pos_sigma (setq _pos_sigma __pos_sigma)) _pos_sigma)
  (:vel
   (&optional __vel)
   (if __vel (setq _vel __vel)) _vel)
  (:vel_sigma
   (&optional __vel_sigma)
   (if __vel_sigma (setq _vel_sigma __vel_sigma)) _vel_sigma)
  (:num_svs
   (&optional __num_svs)
   (if __num_svs (setq _num_svs __num_svs)) _num_svs)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float64[] _pos
    (* 8    (length _pos)) 4
    ;; float64[] _pos_sigma
    (* 8    (length _pos_sigma)) 4
    ;; float64[] _vel
    (* 8    (length _vel)) 4
    ;; float64[] _vel_sigma
    (* 8    (length _vel_sigma)) 4
    ;; uint32 _num_svs
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float64[] _pos
     (write-long (length _pos) s)
     (dotimes (i (length _pos))
       (sys::poke (elt _pos i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _pos_sigma
     (write-long (length _pos_sigma) s)
     (dotimes (i (length _pos_sigma))
       (sys::poke (elt _pos_sigma i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _vel
     (write-long (length _vel) s)
     (dotimes (i (length _vel))
       (sys::poke (elt _vel i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _vel_sigma
     (write-long (length _vel_sigma) s)
     (dotimes (i (length _vel_sigma))
       (sys::poke (elt _vel_sigma i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; uint32 _num_svs
       (write-long _num_svs s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float64[] _pos
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _pos (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _pos i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _pos_sigma
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _pos_sigma (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _pos_sigma i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _vel
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _vel (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _vel i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _vel_sigma
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _vel_sigma (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _vel_sigma i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; uint32 _num_svs
     (setq _num_svs (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get gnss_comm::GnssBestXYZMsg :md5sum-) "8760f15dc1e5a1752bf3a62384ef184e")
(setf (get gnss_comm::GnssBestXYZMsg :datatype-) "gnss_comm/GnssBestXYZMsg")
(setf (get gnss_comm::GnssBestXYZMsg :definition-)
      "Header header
float64[] pos
float64[] pos_sigma
float64[] vel
float64[] vel_sigma
uint32    num_svs
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



(provide :gnss_comm/GnssBestXYZMsg "8760f15dc1e5a1752bf3a62384ef184e")


