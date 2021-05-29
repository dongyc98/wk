
(cl:in-package :asdf)

(defsystem "gps_msg-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "Gps_GGA" :depends-on ("_package_Gps_GGA"))
    (:file "_package_Gps_GGA" :depends-on ("_package"))
    (:file "Gps_INSPVA" :depends-on ("_package_Gps_INSPVA"))
    (:file "_package_Gps_INSPVA" :depends-on ("_package"))
    (:file "Gps_RMC" :depends-on ("_package_Gps_RMC"))
    (:file "_package_Gps_RMC" :depends-on ("_package"))
  ))