
(cl:in-package :asdf)

(defsystem "light_robot-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "auc" :depends-on ("_package_auc"))
    (:file "_package_auc" :depends-on ("_package"))
  ))