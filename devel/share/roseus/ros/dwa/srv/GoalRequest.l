;; Auto-generated. Do not edit!


(when (boundp 'dwa::GoalRequest)
  (if (not (find-package "DWA"))
    (make-package "DWA"))
  (shadow 'GoalRequest (find-package "DWA")))
(unless (find-package "DWA::GOALREQUEST")
  (make-package "DWA::GOALREQUEST"))
(unless (find-package "DWA::GOALREQUESTREQUEST")
  (make-package "DWA::GOALREQUESTREQUEST"))
(unless (find-package "DWA::GOALREQUESTRESPONSE")
  (make-package "DWA::GOALREQUESTRESPONSE"))

(in-package "ROS")





(defclass dwa::GoalRequestRequest
  :super ros::object
  :slots (_bot_name ))

(defmethod dwa::GoalRequestRequest
  (:init
   (&key
    ((:bot_name __bot_name) "")
    )
   (send-super :init)
   (setq _bot_name (string __bot_name))
   self)
  (:bot_name
   (&optional __bot_name)
   (if __bot_name (setq _bot_name __bot_name)) _bot_name)
  (:serialization-length
   ()
   (+
    ;; string _bot_name
    4 (length _bot_name)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _bot_name
       (write-long (length _bot_name) s) (princ _bot_name s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _bot_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _bot_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass dwa::GoalRequestResponse
  :super ros::object
  :slots (_goal_x _goal_y _stamp _success ))

(defmethod dwa::GoalRequestResponse
  (:init
   (&key
    ((:goal_x __goal_x) 0)
    ((:goal_y __goal_y) 0)
    ((:stamp __stamp) (instance ros::time :init))
    ((:success __success) nil)
    )
   (send-super :init)
   (setq _goal_x (round __goal_x))
   (setq _goal_y (round __goal_y))
   (setq _stamp __stamp)
   (setq _success __success)
   self)
  (:goal_x
   (&optional __goal_x)
   (if __goal_x (setq _goal_x __goal_x)) _goal_x)
  (:goal_y
   (&optional __goal_y)
   (if __goal_y (setq _goal_y __goal_y)) _goal_y)
  (:stamp
   (&optional __stamp)
   (if __stamp (setq _stamp __stamp)) _stamp)
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:serialization-length
   ()
   (+
    ;; int64 _goal_x
    8
    ;; int64 _goal_y
    8
    ;; time _stamp
    8
    ;; bool _success
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64 _goal_x
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _goal_x (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _goal_x) (= (length (_goal_x . bv)) 2)) ;; bignum
              (write-long (ash (elt (_goal_x . bv) 0) 0) s)
              (write-long (ash (elt (_goal_x . bv) 1) -1) s))
             ((and (class _goal_x) (= (length (_goal_x . bv)) 1)) ;; big1
              (write-long (elt (_goal_x . bv) 0) s)
              (write-long (if (>= _goal_x 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _goal_x s)(write-long (if (>= _goal_x 0) 0 #xffffffff) s)))
     ;; int64 _goal_y
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _goal_y (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _goal_y) (= (length (_goal_y . bv)) 2)) ;; bignum
              (write-long (ash (elt (_goal_y . bv) 0) 0) s)
              (write-long (ash (elt (_goal_y . bv) 1) -1) s))
             ((and (class _goal_y) (= (length (_goal_y . bv)) 1)) ;; big1
              (write-long (elt (_goal_y . bv) 0) s)
              (write-long (if (>= _goal_y 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _goal_y s)(write-long (if (>= _goal_y 0) 0 #xffffffff) s)))
     ;; time _stamp
       (write-long (send _stamp :sec) s) (write-long (send _stamp :nsec) s)
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int64 _goal_x
#+(or :alpha :irix6 :x86_64)
      (setf _goal_x (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _goal_x (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; int64 _goal_y
#+(or :alpha :irix6 :x86_64)
      (setf _goal_y (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _goal_y (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; time _stamp
     (send _stamp :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _stamp :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass dwa::GoalRequest
  :super ros::object
  :slots ())

(setf (get dwa::GoalRequest :md5sum-) "be9923288e21a498f8a393f67472abcf")
(setf (get dwa::GoalRequest :datatype-) "dwa/GoalRequest")
(setf (get dwa::GoalRequest :request) dwa::GoalRequestRequest)
(setf (get dwa::GoalRequest :response) dwa::GoalRequestResponse)

(defmethod dwa::GoalRequestRequest
  (:response () (instance dwa::GoalRequestResponse :init)))

(setf (get dwa::GoalRequestRequest :md5sum-) "be9923288e21a498f8a393f67472abcf")
(setf (get dwa::GoalRequestRequest :datatype-) "dwa/GoalRequestRequest")
(setf (get dwa::GoalRequestRequest :definition-)
      "string bot_name
---
int64 goal_x
int64 goal_y
time stamp
bool success
")

(setf (get dwa::GoalRequestResponse :md5sum-) "be9923288e21a498f8a393f67472abcf")
(setf (get dwa::GoalRequestResponse :datatype-) "dwa/GoalRequestResponse")
(setf (get dwa::GoalRequestResponse :definition-)
      "string bot_name
---
int64 goal_x
int64 goal_y
time stamp
bool success
")



(provide :dwa/GoalRequest "be9923288e21a498f8a393f67472abcf")


