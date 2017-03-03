
(cl:in-package :asdf)

(defsystem "ORB_SERVER-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :sensor_msgs-msg
)
  :components ((:file "_package")
    (:file "clientBag" :depends-on ("_package_clientBag"))
    (:file "_package_clientBag" :depends-on ("_package"))
    (:file "accleration" :depends-on ("_package_accleration"))
    (:file "_package_accleration" :depends-on ("_package"))
    (:file "dstate" :depends-on ("_package_dstate"))
    (:file "_package_dstate" :depends-on ("_package"))
    (:file "gyroscope" :depends-on ("_package_gyroscope"))
    (:file "_package_gyroscope" :depends-on ("_package"))
    (:file "keypoint" :depends-on ("_package_keypoint"))
    (:file "_package_keypoint" :depends-on ("_package"))
  ))