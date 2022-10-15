
(cl:in-package :asdf)

(defsystem "ekf_slam-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "LandmarksMap" :depends-on ("_package_LandmarksMap"))
    (:file "_package_LandmarksMap" :depends-on ("_package"))
  ))