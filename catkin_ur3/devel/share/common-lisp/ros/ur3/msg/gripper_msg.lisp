; Auto-generated. Do not edit!


(cl:in-package ur3-msg)


;//! \htmlinclude gripper_msg.msg.html

(cl:defclass <gripper_msg> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (gripper
    :reader gripper
    :initarg :gripper
    :type control_msgs-msg:GripperCommand
    :initform (cl:make-instance 'control_msgs-msg:GripperCommand)))
)

(cl:defclass gripper_msg (<gripper_msg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <gripper_msg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'gripper_msg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ur3-msg:<gripper_msg> is deprecated: use ur3-msg:gripper_msg instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <gripper_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ur3-msg:header-val is deprecated.  Use ur3-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'gripper-val :lambda-list '(m))
(cl:defmethod gripper-val ((m <gripper_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ur3-msg:gripper-val is deprecated.  Use ur3-msg:gripper instead.")
  (gripper m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <gripper_msg>) ostream)
  "Serializes a message object of type '<gripper_msg>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'gripper) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <gripper_msg>) istream)
  "Deserializes a message object of type '<gripper_msg>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'gripper) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<gripper_msg>)))
  "Returns string type for a message object of type '<gripper_msg>"
  "ur3/gripper_msg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'gripper_msg)))
  "Returns string type for a message object of type 'gripper_msg"
  "ur3/gripper_msg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<gripper_msg>)))
  "Returns md5sum for a message object of type '<gripper_msg>"
  "fc18072711edbb7f42a3cb3011b6a573")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'gripper_msg)))
  "Returns md5sum for a message object of type 'gripper_msg"
  "fc18072711edbb7f42a3cb3011b6a573")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<gripper_msg>)))
  "Returns full string definition for message of type '<gripper_msg>"
  (cl:format cl:nil "std_msgs/Header header~%control_msgs/GripperCommand gripper~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: control_msgs/GripperCommand~%float64 position~%float64 max_effort~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'gripper_msg)))
  "Returns full string definition for message of type 'gripper_msg"
  (cl:format cl:nil "std_msgs/Header header~%control_msgs/GripperCommand gripper~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: control_msgs/GripperCommand~%float64 position~%float64 max_effort~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <gripper_msg>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'gripper))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <gripper_msg>))
  "Converts a ROS message object to a list"
  (cl:list 'gripper_msg
    (cl:cons ':header (header msg))
    (cl:cons ':gripper (gripper msg))
))
