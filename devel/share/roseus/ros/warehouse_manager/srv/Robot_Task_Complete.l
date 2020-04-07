;; Auto-generated. Do not edit!


(when (boundp 'warehouse_manager::Robot_Task_Complete)
  (if (not (find-package "WAREHOUSE_MANAGER"))
    (make-package "WAREHOUSE_MANAGER"))
  (shadow 'Robot_Task_Complete (find-package "WAREHOUSE_MANAGER")))
(unless (find-package "WAREHOUSE_MANAGER::ROBOT_TASK_COMPLETE")
  (make-package "WAREHOUSE_MANAGER::ROBOT_TASK_COMPLETE"))
(unless (find-package "WAREHOUSE_MANAGER::ROBOT_TASK_COMPLETEREQUEST")
  (make-package "WAREHOUSE_MANAGER::ROBOT_TASK_COMPLETEREQUEST"))
(unless (find-package "WAREHOUSE_MANAGER::ROBOT_TASK_COMPLETERESPONSE")
  (make-package "WAREHOUSE_MANAGER::ROBOT_TASK_COMPLETERESPONSE"))

(in-package "ROS")





(defclass warehouse_manager::Robot_Task_CompleteRequest
  :super ros::object
  :slots (_robot_name _time_taken _shortest_distance ))

(defmethod warehouse_manager::Robot_Task_CompleteRequest
  (:init
   (&key
    ((:robot_name __robot_name) "")
    ((:time_taken __time_taken) 0.0)
    ((:shortest_distance __shortest_distance) 0.0)
    )
   (send-super :init)
   (setq _robot_name (string __robot_name))
   (setq _time_taken (float __time_taken))
   (setq _shortest_distance (float __shortest_distance))
   self)
  (:robot_name
   (&optional __robot_name)
   (if __robot_name (setq _robot_name __robot_name)) _robot_name)
  (:time_taken
   (&optional __time_taken)
   (if __time_taken (setq _time_taken __time_taken)) _time_taken)
  (:shortest_distance
   (&optional __shortest_distance)
   (if __shortest_distance (setq _shortest_distance __shortest_distance)) _shortest_distance)
  (:serialization-length
   ()
   (+
    ;; string _robot_name
    4 (length _robot_name)
    ;; float64 _time_taken
    8
    ;; float64 _shortest_distance
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _robot_name
       (write-long (length _robot_name) s) (princ _robot_name s)
     ;; float64 _time_taken
       (sys::poke _time_taken (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _shortest_distance
       (sys::poke _shortest_distance (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _robot_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _robot_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float64 _time_taken
     (setq _time_taken (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _shortest_distance
     (setq _shortest_distance (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass warehouse_manager::Robot_Task_CompleteResponse
  :super ros::object
  :slots ())

(defmethod warehouse_manager::Robot_Task_CompleteResponse
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass warehouse_manager::Robot_Task_Complete
  :super ros::object
  :slots ())

(setf (get warehouse_manager::Robot_Task_Complete :md5sum-) "d97d7930a530aa4c1ce9a0a5e1c268f1")
(setf (get warehouse_manager::Robot_Task_Complete :datatype-) "warehouse_manager/Robot_Task_Complete")
(setf (get warehouse_manager::Robot_Task_Complete :request) warehouse_manager::Robot_Task_CompleteRequest)
(setf (get warehouse_manager::Robot_Task_Complete :response) warehouse_manager::Robot_Task_CompleteResponse)

(defmethod warehouse_manager::Robot_Task_CompleteRequest
  (:response () (instance warehouse_manager::Robot_Task_CompleteResponse :init)))

(setf (get warehouse_manager::Robot_Task_CompleteRequest :md5sum-) "d97d7930a530aa4c1ce9a0a5e1c268f1")
(setf (get warehouse_manager::Robot_Task_CompleteRequest :datatype-) "warehouse_manager/Robot_Task_CompleteRequest")
(setf (get warehouse_manager::Robot_Task_CompleteRequest :definition-)
      "string robot_name
float64 time_taken
float64 shortest_distance
---

")

(setf (get warehouse_manager::Robot_Task_CompleteResponse :md5sum-) "d97d7930a530aa4c1ce9a0a5e1c268f1")
(setf (get warehouse_manager::Robot_Task_CompleteResponse :datatype-) "warehouse_manager/Robot_Task_CompleteResponse")
(setf (get warehouse_manager::Robot_Task_CompleteResponse :definition-)
      "string robot_name
float64 time_taken
float64 shortest_distance
---

")



(provide :warehouse_manager/Robot_Task_Complete "d97d7930a530aa4c1ce9a0a5e1c268f1")


