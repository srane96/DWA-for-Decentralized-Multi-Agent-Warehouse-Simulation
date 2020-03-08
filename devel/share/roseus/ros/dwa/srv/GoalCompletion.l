;; Auto-generated. Do not edit!


(when (boundp 'dwa::GoalCompletion)
  (if (not (find-package "DWA"))
    (make-package "DWA"))
  (shadow 'GoalCompletion (find-package "DWA")))
(unless (find-package "DWA::GOALCOMPLETION")
  (make-package "DWA::GOALCOMPLETION"))
(unless (find-package "DWA::GOALCOMPLETIONREQUEST")
  (make-package "DWA::GOALCOMPLETIONREQUEST"))
(unless (find-package "DWA::GOALCOMPLETIONRESPONSE")
  (make-package "DWA::GOALCOMPLETIONRESPONSE"))

(in-package "ROS")





(defclass dwa::GoalCompletionRequest
  :super ros::object
  :slots (_bot_name _stamp ))

(defmethod dwa::GoalCompletionRequest
  (:init
   (&key
    ((:bot_name __bot_name) "")
    ((:stamp __stamp) (instance ros::time :init))
    )
   (send-super :init)
   (setq _bot_name (string __bot_name))
   (setq _stamp __stamp)
   self)
  (:bot_name
   (&optional __bot_name)
   (if __bot_name (setq _bot_name __bot_name)) _bot_name)
  (:stamp
   (&optional __stamp)
   (if __stamp (setq _stamp __stamp)) _stamp)
  (:serialization-length
   ()
   (+
    ;; string _bot_name
    4 (length _bot_name)
    ;; time _stamp
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _bot_name
       (write-long (length _bot_name) s) (princ _bot_name s)
     ;; time _stamp
       (write-long (send _stamp :sec) s) (write-long (send _stamp :nsec) s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _bot_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _bot_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; time _stamp
     (send _stamp :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _stamp :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass dwa::GoalCompletionResponse
  :super ros::object
  :slots (_success ))

(defmethod dwa::GoalCompletionResponse
  (:init
   (&key
    ((:success __success) nil)
    )
   (send-super :init)
   (setq _success __success)
   self)
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass dwa::GoalCompletion
  :super ros::object
  :slots ())

(setf (get dwa::GoalCompletion :md5sum-) "42e3abf21647402779ca4cba1b57445d")
(setf (get dwa::GoalCompletion :datatype-) "dwa/GoalCompletion")
(setf (get dwa::GoalCompletion :request) dwa::GoalCompletionRequest)
(setf (get dwa::GoalCompletion :response) dwa::GoalCompletionResponse)

(defmethod dwa::GoalCompletionRequest
  (:response () (instance dwa::GoalCompletionResponse :init)))

(setf (get dwa::GoalCompletionRequest :md5sum-) "42e3abf21647402779ca4cba1b57445d")
(setf (get dwa::GoalCompletionRequest :datatype-) "dwa/GoalCompletionRequest")
(setf (get dwa::GoalCompletionRequest :definition-)
      "string bot_name
time stamp
---
bool success
")

(setf (get dwa::GoalCompletionResponse :md5sum-) "42e3abf21647402779ca4cba1b57445d")
(setf (get dwa::GoalCompletionResponse :datatype-) "dwa/GoalCompletionResponse")
(setf (get dwa::GoalCompletionResponse :definition-)
      "string bot_name
time stamp
---
bool success
")



(provide :dwa/GoalCompletion "42e3abf21647402779ca4cba1b57445d")


