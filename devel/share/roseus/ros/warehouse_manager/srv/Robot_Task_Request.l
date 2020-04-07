;; Auto-generated. Do not edit!


(when (boundp 'warehouse_manager::Robot_Task_Request)
  (if (not (find-package "WAREHOUSE_MANAGER"))
    (make-package "WAREHOUSE_MANAGER"))
  (shadow 'Robot_Task_Request (find-package "WAREHOUSE_MANAGER")))
(unless (find-package "WAREHOUSE_MANAGER::ROBOT_TASK_REQUEST")
  (make-package "WAREHOUSE_MANAGER::ROBOT_TASK_REQUEST"))
(unless (find-package "WAREHOUSE_MANAGER::ROBOT_TASK_REQUESTREQUEST")
  (make-package "WAREHOUSE_MANAGER::ROBOT_TASK_REQUESTREQUEST"))
(unless (find-package "WAREHOUSE_MANAGER::ROBOT_TASK_REQUESTRESPONSE")
  (make-package "WAREHOUSE_MANAGER::ROBOT_TASK_REQUESTRESPONSE"))

(in-package "ROS")





(defclass warehouse_manager::Robot_Task_RequestRequest
  :super ros::object
  :slots (_name ))

(defmethod warehouse_manager::Robot_Task_RequestRequest
  (:init
   (&key
    ((:name __name) "")
    )
   (send-super :init)
   (setq _name (string __name))
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass warehouse_manager::Robot_Task_RequestResponse
  :super ros::object
  :slots (_x _y ))

(defmethod warehouse_manager::Robot_Task_RequestResponse
  (:init
   (&key
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    )
   (send-super :init)
   (setq _x (float __x))
   (setq _y (float __y))
   self)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:serialization-length
   ()
   (+
    ;; float64 _x
    8
    ;; float64 _y
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _x
       (sys::poke _x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _y
       (sys::poke _y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _x
     (setq _x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _y
     (setq _y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass warehouse_manager::Robot_Task_Request
  :super ros::object
  :slots ())

(setf (get warehouse_manager::Robot_Task_Request :md5sum-) "77322248a0582fccda2d5e89f799e25b")
(setf (get warehouse_manager::Robot_Task_Request :datatype-) "warehouse_manager/Robot_Task_Request")
(setf (get warehouse_manager::Robot_Task_Request :request) warehouse_manager::Robot_Task_RequestRequest)
(setf (get warehouse_manager::Robot_Task_Request :response) warehouse_manager::Robot_Task_RequestResponse)

(defmethod warehouse_manager::Robot_Task_RequestRequest
  (:response () (instance warehouse_manager::Robot_Task_RequestResponse :init)))

(setf (get warehouse_manager::Robot_Task_RequestRequest :md5sum-) "77322248a0582fccda2d5e89f799e25b")
(setf (get warehouse_manager::Robot_Task_RequestRequest :datatype-) "warehouse_manager/Robot_Task_RequestRequest")
(setf (get warehouse_manager::Robot_Task_RequestRequest :definition-)
      "string name
---
float64 x
float64 y

")

(setf (get warehouse_manager::Robot_Task_RequestResponse :md5sum-) "77322248a0582fccda2d5e89f799e25b")
(setf (get warehouse_manager::Robot_Task_RequestResponse :datatype-) "warehouse_manager/Robot_Task_RequestResponse")
(setf (get warehouse_manager::Robot_Task_RequestResponse :definition-)
      "string name
---
float64 x
float64 y

")



(provide :warehouse_manager/Robot_Task_Request "77322248a0582fccda2d5e89f799e25b")


