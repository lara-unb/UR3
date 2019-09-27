;; Auto-generated. Do not edit!


(when (boundp 'ur3::ref_msg)
  (if (not (find-package "UR3"))
    (make-package "UR3"))
  (shadow 'ref_msg (find-package "UR3")))
(unless (find-package "UR3::REF_MSG")
  (make-package "UR3::REF_MSG"))

(in-package "ROS")
;;//! \htmlinclude ref_msg.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass ur3::ref_msg
  :super ros::object
  :slots (_header _refer ))

(defmethod ur3::ref_msg
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:refer __refer) (instance std_msgs::Float32MultiArray :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _refer __refer)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:refer
   (&rest __refer)
   (if (keywordp (car __refer))
       (send* _refer __refer)
     (progn
       (if __refer (setq _refer (car __refer)))
       _refer)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; std_msgs/Float32MultiArray _refer
    (send _refer :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; std_msgs/Float32MultiArray _refer
       (send _refer :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; std_msgs/Float32MultiArray _refer
     (send _refer :deserialize buf ptr-) (incf ptr- (send _refer :serialization-length))
   ;;
   self)
  )

(setf (get ur3::ref_msg :md5sum-) "9c2c738578a538f502876be5c4209847")
(setf (get ur3::ref_msg :datatype-) "ur3/ref_msg")
(setf (get ur3::ref_msg :definition-)
      "Header header
std_msgs/Float32MultiArray refer
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

================================================================================
MSG: std_msgs/Float32MultiArray
# Please look at the MultiArrayLayout message definition for
# documentation on all multiarrays.

MultiArrayLayout  layout        # specification of data layout
float32[]         data          # array of data


================================================================================
MSG: std_msgs/MultiArrayLayout
# The multiarray declares a generic multi-dimensional array of a
# particular data type.  Dimensions are ordered from outer most
# to inner most.

MultiArrayDimension[] dim # Array of dimension properties
uint32 data_offset        # padding elements at front of data

# Accessors should ALWAYS be written in terms of dimension stride
# and specified outer-most dimension first.
# 
# multiarray(i,j,k) = data[data_offset + dim_stride[1]*i + dim_stride[2]*j + k]
#
# A standard, 3-channel 640x480 image with interleaved color channels
# would be specified as:
#
# dim[0].label  = \"height\"
# dim[0].size   = 480
# dim[0].stride = 3*640*480 = 921600  (note dim[0] stride is just size of image)
# dim[1].label  = \"width\"
# dim[1].size   = 640
# dim[1].stride = 3*640 = 1920
# dim[2].label  = \"channel\"
# dim[2].size   = 3
# dim[2].stride = 3
#
# multiarray(i,j,k) refers to the ith row, jth column, and kth channel.

================================================================================
MSG: std_msgs/MultiArrayDimension
string label   # label of given dimension
uint32 size    # size of given dimension (in type units)
uint32 stride  # stride of given dimension
")



(provide :ur3/ref_msg "9c2c738578a538f502876be5c4209847")


