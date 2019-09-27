
(cl:in-package :asdf)

(defsystem "ur3-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :control_msgs-msg
               :geometry_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "end_Effector_msg" :depends-on ("_package_end_Effector_msg"))
    (:file "_package_end_Effector_msg" :depends-on ("_package"))
    (:file "gripper_msg" :depends-on ("_package_gripper_msg"))
    (:file "_package_gripper_msg" :depends-on ("_package"))
    (:file "ref_msg" :depends-on ("_package_ref_msg"))
    (:file "_package_ref_msg" :depends-on ("_package"))
  ))