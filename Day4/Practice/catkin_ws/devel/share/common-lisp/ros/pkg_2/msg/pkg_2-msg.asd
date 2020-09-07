
(cl:in-package :asdf)

(defsystem "pkg_2-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "message_file" :depends-on ("_package_message_file"))
    (:file "_package_message_file" :depends-on ("_package"))
  ))