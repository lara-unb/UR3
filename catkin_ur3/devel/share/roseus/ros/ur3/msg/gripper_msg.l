;; Auto-generated. Do not edit!


(when (boundp 'ur3::gripper_msg)
  (if (not (find-package "UR3"))
    (make-package "UR3"))
  (shadow 'gripper_msg (find-package "UR3")))
(unless (find-package "UR3::GRIPPER_MSG")
  (make-package "UR3::GRIPPER_MSG"))

(in-package "ROS")
;;//! \htmlinclude gripper_msg.msg.html
(if (not (find-package "CONTROL_MSGS"))
  (ros::roseus-add-msgs "control_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass ur3::gripper_msg
  :super ros::object
  :slots (_header _gripper ))

(defmethod ur3::gripper_msg
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:gripper __gripper) (instance control_msgs::GripperCommand :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _gripper __gripper)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:gripper
   (&rest __gripper)
   (if (keywordp (car __gripper))
       (send* _gripper __gripper)
     (progn
       (if __gripper (setq _gripper (car __gripper)))
       _gripper)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; control_msgs/GripperCommand _gripper
    (send _gripper :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; control_msgs/GripperCommand _gripper
       (send _gripper :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; control_msgs/GripperCommand _gripper
     (send _gripper :deserialize buf ptr-) (incf ptr- (send _gripper :serialization-length))
   ;;
   self)
  )

(setf (get ur3::gripper_msg :md5sum-) "fc18072711edbb7f42a3cb3011b6a573")
(setf (get ur3::gripper_msg :datatype-) "ur3/gripper_msg")
(setf (get ur3::gripper_msg :definition-)
      "std_msgs/Header header
control_msgs/GripperCommand gripper
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
MSG: control_msgs/GripperCommand
float64 position
float64 max_effort

")



(provide :ur3/gripper_msg "fc18072711edbb7f42a3cb3011b6a573")


