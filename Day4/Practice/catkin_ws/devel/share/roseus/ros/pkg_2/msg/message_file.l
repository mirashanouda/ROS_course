;; Auto-generated. Do not edit!


(when (boundp 'pkg_2::message_file)
  (if (not (find-package "PKG_2"))
    (make-package "PKG_2"))
  (shadow 'message_file (find-package "PKG_2")))
(unless (find-package "PKG_2::MESSAGE_FILE")
  (make-package "PKG_2::MESSAGE_FILE"))

(in-package "ROS")
;;//! \htmlinclude message_file.msg.html


(defclass pkg_2::message_file
  :super ros::object
  :slots (_id _name _temp _humidity ))

(defmethod pkg_2::message_file
  (:init
   (&key
    ((:id __id) 0)
    ((:name __name) "")
    ((:temp __temp) 0.0)
    ((:humidity __humidity) 0.0)
    )
   (send-super :init)
   (setq _id (round __id))
   (setq _name (string __name))
   (setq _temp (float __temp))
   (setq _humidity (float __humidity))
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:temp
   (&optional __temp)
   (if __temp (setq _temp __temp)) _temp)
  (:humidity
   (&optional __humidity)
   (if __humidity (setq _humidity __humidity)) _humidity)
  (:serialization-length
   ()
   (+
    ;; int32 _id
    4
    ;; string _name
    4 (length _name)
    ;; float32 _temp
    4
    ;; float32 _humidity
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _id
       (write-long _id s)
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; float32 _temp
       (sys::poke _temp (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _humidity
       (sys::poke _humidity (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _id
     (setq _id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float32 _temp
     (setq _temp (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _humidity
     (setq _humidity (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get pkg_2::message_file :md5sum-) "bf2b034714b34baf5d9236109fd66779")
(setf (get pkg_2::message_file :datatype-) "pkg_2/message_file")
(setf (get pkg_2::message_file :definition-)
      "int32 id
string name
float32 temp
float32 humidity

")



(provide :pkg_2/message_file "bf2b034714b34baf5d9236109fd66779")


