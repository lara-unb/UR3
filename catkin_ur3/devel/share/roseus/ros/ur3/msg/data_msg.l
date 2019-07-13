;; Auto-generated. Do not edit!


(when (boundp 'ur3::data_msg)
  (if (not (find-package "UR3"))
    (make-package "UR3"))
  (shadow 'data_msg (find-package "UR3")))
(unless (find-package "UR3::DATA_MSG")
  (make-package "UR3::DATA_MSG"))

(in-package "ROS")
;;//! \htmlinclude data_msg.msg.html


(defclass ur3::data_msg
  :super ros::object
  :slots (_pose _velocity _torque ))

(defmethod ur3::data_msg
  (:init
   (&key
    ((:pose __pose) 0.0)
    ((:velocity __velocity) 0.0)
    ((:torque __torque) 0.0)
    )
   (send-super :init)
   (setq _pose (float __pose))
   (setq _velocity (float __velocity))
   (setq _torque (float __torque))
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
    ;; float32 _pose
    4
    ;; float32 _velocity
    4
    ;; float32 _torque
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _pose
       (sys::poke _pose (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _velocity
       (sys::poke _velocity (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _torque
       (sys::poke _torque (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _pose
     (setq _pose (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _velocity
     (setq _velocity (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _torque
     (setq _torque (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get ur3::data_msg :md5sum-) "bb3e6c5bd746641b03ce50dac21c6a43")
(setf (get ur3::data_msg :datatype-) "ur3/data_msg")
(setf (get ur3::data_msg :definition-)
      "float32 pose
float32 velocity
float32 torque
")



(provide :ur3/data_msg "bb3e6c5bd746641b03ce50dac21c6a43")


