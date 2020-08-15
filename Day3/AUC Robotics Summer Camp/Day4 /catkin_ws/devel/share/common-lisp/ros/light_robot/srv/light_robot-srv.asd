
(cl:in-package :asdf)

(defsystem "light_robot-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "AddTwoNum" :depends-on ("_package_AddTwoNum"))
    (:file "_package_AddTwoNum" :depends-on ("_package"))
  ))