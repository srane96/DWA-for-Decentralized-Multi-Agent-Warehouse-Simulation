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
  :slots (_bot_name _goal_name _total_time _total_dist _goal_success ))

(defmethod dwa::GoalCompletionRequest
  (:init
   (&key
    ((:bot_name __bot_name) "")
    ((:goal_name __goal_name) "")
    ((:total_time __total_time) 0.0)
    ((:total_dist __total_dist) 0.0)
    ((:goal_success __goal_success) nil)
    )
   (send-super :init)
   (setq _bot_name (string __bot_name))
   (setq _goal_name (string __goal_name))
   (setq _total_time (float __total_time))
   (setq _total_dist (float __total_dist))
   (setq _goal_success __goal_success)
   self)
  (:bot_name
   (&optional __bot_name)
   (if __bot_name (setq _bot_name __bot_name)) _bot_name)
  (:goal_name
   (&optional __goal_name)
   (if __goal_name (setq _goal_name __goal_name)) _goal_name)
  (:total_time
   (&optional __total_time)
   (if __total_time (setq _total_time __total_time)) _total_time)
  (:total_dist
   (&optional __total_dist)
   (if __total_dist (setq _total_dist __total_dist)) _total_dist)
  (:goal_success
   (&optional __goal_success)
   (if __goal_success (setq _goal_success __goal_success)) _goal_success)
  (:serialization-length
   ()
   (+
    ;; string _bot_name
    4 (length _bot_name)
    ;; string _goal_name
    4 (length _goal_name)
    ;; float64 _total_time
    8
    ;; float64 _total_dist
    8
    ;; bool _goal_success
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _bot_name
       (write-long (length _bot_name) s) (princ _bot_name s)
     ;; string _goal_name
       (write-long (length _goal_name) s) (princ _goal_name s)
     ;; float64 _total_time
       (sys::poke _total_time (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _total_dist
       (sys::poke _total_dist (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; bool _goal_success
       (if _goal_success (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _bot_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _bot_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _goal_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _goal_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float64 _total_time
     (setq _total_time (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _total_dist
     (setq _total_dist (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; bool _goal_success
     (setq _goal_success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
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

(setf (get dwa::GoalCompletion :md5sum-) "22c96589d92d22574649c35ddc8339a8")
(setf (get dwa::GoalCompletion :datatype-) "dwa/GoalCompletion")
(setf (get dwa::GoalCompletion :request) dwa::GoalCompletionRequest)
(setf (get dwa::GoalCompletion :response) dwa::GoalCompletionResponse)

(defmethod dwa::GoalCompletionRequest
  (:response () (instance dwa::GoalCompletionResponse :init)))

(setf (get dwa::GoalCompletionRequest :md5sum-) "22c96589d92d22574649c35ddc8339a8")
(setf (get dwa::GoalCompletionRequest :datatype-) "dwa/GoalCompletionRequest")
(setf (get dwa::GoalCompletionRequest :definition-)
      "string bot_name
string goal_name
float64 total_time
float64 total_dist
bool goal_success
---
bool success
")

(setf (get dwa::GoalCompletionResponse :md5sum-) "22c96589d92d22574649c35ddc8339a8")
(setf (get dwa::GoalCompletionResponse :datatype-) "dwa/GoalCompletionResponse")
(setf (get dwa::GoalCompletionResponse :definition-)
      "string bot_name
string goal_name
float64 total_time
float64 total_dist
bool goal_success
---
bool success
")



(provide :dwa/GoalCompletion "22c96589d92d22574649c35ddc8339a8")


