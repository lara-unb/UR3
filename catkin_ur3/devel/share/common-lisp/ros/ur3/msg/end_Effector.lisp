; Auto-generated. Do not edit!


(cl:in-package ur3-msg)


;//! \htmlinclude end_Effector.msg.html

(cl:defclass <end_Effector> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (state
    :reader state
    :initarg :state
    :type std_msgs-msg:Bool
    :initform (cl:make-instance 'std_msgs-msg:Bool))
   (pose
    :reader pose
    :initarg :pose
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose))
   (gripper
    :reader gripper
    :initarg :gripper
    :type control_msgs-msg:GripperCommand
    :initform (cl:make-instance 'control_msgs-msg:GripperCommand))
   (wrench
    :reader wrench
    :initarg :wrench
    :type geometry_msgs-msg:Wrench
    :initform (cl:make-instance 'geometry_msgs-msg:Wrench))
   (velocity
    :reader velocity
    :initarg :velocity
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3)))
)

(cl:defclass end_Effector (<end_Effector>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <end_Effector>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'end_Effector)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ur3-msg:<end_Effector> is deprecated: use ur3-msg:end_Effector instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <end_Effector>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ur3-msg:header-val is deprecated.  Use ur3-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <end_Effector>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ur3-msg:state-val is deprecated.  Use ur3-msg:state instead.")
  (state m))

(cl:ensure-generic-function 'pose-val :lambda-list '(m))
(cl:defmethod pose-val ((m <end_Effector>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ur3-msg:pose-val is deprecated.  Use ur3-msg:pose instead.")
  (pose m))

(cl:ensure-generic-function 'gripper-val :lambda-list '(m))
(cl:defmethod gripper-val ((m <end_Effector>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ur3-msg:gripper-val is deprecated.  Use ur3-msg:gripper instead.")
  (gripper m))

(cl:ensure-generic-function 'wrench-val :lambda-list '(m))
(cl:defmethod wrench-val ((m <end_Effector>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ur3-msg:wrench-val is deprecated.  Use ur3-msg:wrench instead.")
  (wrench m))

(cl:ensure-generic-function 'velocity-val :lambda-list '(m))
(cl:defmethod velocity-val ((m <end_Effector>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ur3-msg:velocity-val is deprecated.  Use ur3-msg:velocity instead.")
  (velocity m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <end_Effector>) ostream)
  "Serializes a message object of type '<end_Effector>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'state) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'gripper) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'wrench) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'velocity) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <end_Effector>) istream)
  "Deserializes a message object of type '<end_Effector>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'state) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'gripper) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'wrench) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'velocity) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<end_Effector>)))
  "Returns string type for a message object of type '<end_Effector>"
  "ur3/end_Effector")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'end_Effector)))
  "Returns string type for a message object of type 'end_Effector"
  "ur3/end_Effector")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<end_Effector>)))
  "Returns md5sum for a message object of type '<end_Effector>"
  "ed2f79454cafcd1b110fff41cc4d9286")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'end_Effector)))
  "Returns md5sum for a message object of type 'end_Effector"
  "ed2f79454cafcd1b110fff41cc4d9286")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<end_Effector>)))
  "Returns full string definition for message of type '<end_Effector>"
  (cl:format cl:nil "Header header~%std_msgs/Bool state ~%geometry_msgs/Pose pose ~%control_msgs/GripperCommand gripper~%geometry_msgs/Wrench wrench~%geometry_msgs/Vector3 velocity~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: std_msgs/Bool~%bool data~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: control_msgs/GripperCommand~%float64 position~%float64 max_effort~%~%================================================================================~%MSG: geometry_msgs/Wrench~%# This represents force in free space, separated into~%# its linear and angular parts.~%Vector3  force~%Vector3  torque~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'end_Effector)))
  "Returns full string definition for message of type 'end_Effector"
  (cl:format cl:nil "Header header~%std_msgs/Bool state ~%geometry_msgs/Pose pose ~%control_msgs/GripperCommand gripper~%geometry_msgs/Wrench wrench~%geometry_msgs/Vector3 velocity~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: std_msgs/Bool~%bool data~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: control_msgs/GripperCommand~%float64 position~%float64 max_effort~%~%================================================================================~%MSG: geometry_msgs/Wrench~%# This represents force in free space, separated into~%# its linear and angular parts.~%Vector3  force~%Vector3  torque~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <end_Effector>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'state))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'gripper))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'wrench))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'velocity))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <end_Effector>))
  "Converts a ROS message object to a list"
  (cl:list 'end_Effector
    (cl:cons ':header (header msg))
    (cl:cons ':state (state msg))
    (cl:cons ':pose (pose msg))
    (cl:cons ':gripper (gripper msg))
    (cl:cons ':wrench (wrench msg))
    (cl:cons ':velocity (velocity msg))
))
