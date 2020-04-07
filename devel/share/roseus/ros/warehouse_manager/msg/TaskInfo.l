;; Auto-generated. Do not edit!


(when (boundp 'warehouse_manager::TaskInfo)
  (if (not (find-package "WAREHOUSE_MANAGER"))
    (make-package "WAREHOUSE_MANAGER"))
  (shadow 'TaskInfo (find-package "WAREHOUSE_MANAGER")))
(unless (find-package "WAREHOUSE_MANAGER::TASKINFO")
  (make-package "WAREHOUSE_MANAGER::TASKINFO"))

(in-package "ROS")
;;//! \htmlinclude TaskInfo.msg.html


(defclass warehouse_manager::TaskInfo
  :super ros::object
  :slots (_robot_list _task_list ))

(defmethod warehouse_manager::TaskInfo
  (:init
   (&key
    ((:robot_list __robot_list) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:task_list __task_list) (let (r) (dotimes (i 0) (push "" r)) r))
    )
   (send-super :init)
   (setq _robot_list __robot_list)
   (setq _task_list __task_list)
   self)
  (:robot_list
   (&optional __robot_list)
   (if __robot_list (setq _robot_list __robot_list)) _robot_list)
  (:task_list
   (&optional __task_list)
   (if __task_list (setq _task_list __task_list)) _task_list)
  (:serialization-length
   ()
   (+
    ;; string[] _robot_list
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _robot_list)) 4
    ;; string[] _task_list
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _task_list)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string[] _robot_list
     (write-long (length _robot_list) s)
     (dolist (elem _robot_list)
       (write-long (length elem) s) (princ elem s)
       )
     ;; string[] _task_list
     (write-long (length _task_list) s)
     (dolist (elem _task_list)
       (write-long (length elem) s) (princ elem s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string[] _robot_list
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _robot_list (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _robot_list i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; string[] _task_list
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _task_list (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _task_list i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;;
   self)
  )

(setf (get warehouse_manager::TaskInfo :md5sum-) "17840239039ae6341a939e8b4e5eeb0c")
(setf (get warehouse_manager::TaskInfo :datatype-) "warehouse_manager/TaskInfo")
(setf (get warehouse_manager::TaskInfo :definition-)
      "string[] robot_list
string[] task_list

")



(provide :warehouse_manager/TaskInfo "17840239039ae6341a939e8b4e5eeb0c")


