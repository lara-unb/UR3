;; Auto-generated. Do not edit!


(when (boundp 'ur3::arm_msg)
  (if (not (find-package "UR3"))
    (make-package "UR3"))
  (shadow 'arm_msg (find-package "UR3")))
(unless (find-package "UR3::ARM_MSG")
  (make-package "UR3::ARM_MSG"))

(in-package "ROS")
;;//! \htmlinclude arm_msg.msg.html


(defclass ur3::arm_msg
  :super ros::object
  :slots (_pose _velocity _torque ))

(defmethod ur3::arm_msg
  (:init
   (&key
    ((:pose __pose) (make-array 6 :initial-element 0.0 :element-type :float))
    ((:velocity __velocity) (make-array 6 :initial-element 0.0 :element-type :float))
    ((:torque __torque) (make-array 6 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _pose __pose)
   (setq _velocity __velocity)
   (setq _torque __torque)
   self)
  (:pose
   (&optional __pose)
   (if __pose (setq _pose __pose)) _pose)
  (:velocity
   (&optional __velocity)
   (if __velocity (setq _velocity __velocity)) _velocity)
  (:torque
   (&optional __torque)
   (if __torque (setq _torque __torque)) _torque)
  (:serialization-length
   ()
   (+
    ;; float32[6] _pose
    (* 4    6)
    ;; float32[6] _velocity
    (* 4    6)
    ;; float32[6] _torque
    (* 4    6)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32[6] _pose
     (dotimes (i 6)
       (sys::poke (elt _pose i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[6] _velocity
     (dotimes (i 6)
       (sys::poke (elt _velocity i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[6] _torque
     (dotimes (i 6)
       (sys::poke (elt _torque i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32[6] _pose
   (dotimes (i (length _pose))
     (setf (elt _pose i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;; float32[6] _velocity
   (dotimes (i (length _velocity))
     (setf (elt _velocity i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;; float32[6] _torque
   (dotimes (i (length _torque))
     (setf (elt _torque i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;;
   self)
  )

(setf (get ur3::arm_msg :md5sum-) "9a4d464236a1d2454f78317edb9a4f4e")
(setf (get ur3::arm_msg :datatype-) "ur3/arm_msg")
(setf (get ur3::arm_msg :definition-)
      "float32[6] pose
float32[6] velocity
float32[6] torque
")



(provide :ur3/arm_msg "9a4d464236a1d2454f78317edb9a4f4e")


