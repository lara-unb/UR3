; Auto-generated. Do not edit!


(cl:in-package ur3-msg)


;//! \htmlinclude arm_msg.msg.html

(cl:defclass <arm_msg> (roslisp-msg-protocol:ros-message)
  ((pose
    :reader pose
    :initarg :pose
    :type (cl:vector cl:float)
   :initform (cl:make-array 6 :element-type 'cl:float :initial-element 0.0))
   (velocity
    :reader velocity
    :initarg :velocity
    :type (cl:vector cl:float)
   :initform (cl:make-array 6 :element-type 'cl:float :initial-element 0.0))
   (torque
    :reader torque
    :initarg :torque
    :type (cl:vector cl:float)
   :initform (cl:make-array 6 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass arm_msg (<arm_msg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <arm_msg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'arm_msg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ur3-msg:<arm_msg> is deprecated: use ur3-msg:arm_msg instead.")))

(cl:ensure-generic-function 'pose-val :lambda-list '(m))
(cl:defmethod pose-val ((m <arm_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ur3-msg:pose-val is deprecated.  Use ur3-msg:pose instead.")
  (pose m))

(cl:ensure-generic-function 'velocity-val :lambda-list '(m))
(cl:defmethod velocity-val ((m <arm_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ur3-msg:velocity-val is deprecated.  Use ur3-msg:velocity instead.")
  (velocity m))

(cl:ensure-generic-function 'torque-val :lambda-list '(m))
(cl:defmethod torque-val ((m <arm_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ur3-msg:torque-val is deprecated.  Use ur3-msg:torque instead.")
  (torque m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <arm_msg>) ostream)
  "Serializes a message object of type '<arm_msg>"
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'pose))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'velocity))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'torque))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <arm_msg>) istream)
  "Deserializes a message object of type '<arm_msg>"
  (cl:setf (cl:slot-value msg 'pose) (cl:make-array 6))
  (cl:let ((vals (cl:slot-value msg 'pose)))
    (cl:dotimes (i 6)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits)))))
  (cl:setf (cl:slot-value msg 'velocity) (cl:make-array 6))
  (cl:let ((vals (cl:slot-value msg 'velocity)))
    (cl:dotimes (i 6)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits)))))
  (cl:setf (cl:slot-value msg 'torque) (cl:make-array 6))
  (cl:let ((vals (cl:slot-value msg 'torque)))
    (cl:dotimes (i 6)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<arm_msg>)))
  "Returns string type for a message object of type '<arm_msg>"
  "ur3/arm_msg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'arm_msg)))
  "Returns string type for a message object of type 'arm_msg"
  "ur3/arm_msg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<arm_msg>)))
  "Returns md5sum for a message object of type '<arm_msg>"
  "9a4d464236a1d2454f78317edb9a4f4e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'arm_msg)))
  "Returns md5sum for a message object of type 'arm_msg"
  "9a4d464236a1d2454f78317edb9a4f4e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<arm_msg>)))
  "Returns full string definition for message of type '<arm_msg>"
  (cl:format cl:nil "float32[6] pose~%float32[6] velocity~%float32[6] torque~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'arm_msg)))
  "Returns full string definition for message of type 'arm_msg"
  (cl:format cl:nil "float32[6] pose~%float32[6] velocity~%float32[6] torque~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <arm_msg>))
  (cl:+ 0
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'pose) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'velocity) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'torque) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <arm_msg>))
  "Converts a ROS message object to a list"
  (cl:list 'arm_msg
    (cl:cons ':pose (pose msg))
    (cl:cons ':velocity (velocity msg))
    (cl:cons ':torque (torque msg))
))
