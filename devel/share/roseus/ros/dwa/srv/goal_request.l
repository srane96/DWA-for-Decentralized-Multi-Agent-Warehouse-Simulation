;; Auto-generated. Do not edit!


(when (boundp 'dwa::goal_request)
  (if (not (find-package "DWA"))
    (make-package "DWA"))
  (shadow 'goal_request (find-package "DWA")))
(unless (find-package "DWA::GOAL_REQUEST")
  (make-package "DWA::GOAL_REQUEST"))
(unless (find-package "DWA::GOAL_REQUESTREQUEST")
  (make-package "DWA::GOAL_REQUESTREQUEST"))
(unless (find-package "DWA::GOAL_REQUESTRESPONSE")
  (make-package "DWA::GOAL_REQUESTRESPONSE"))

(in-package "ROS")





(defclass dwa::goal_requestRequest
  :super ros::object
  :slots (_bot_name ))

(defmethod dwa::goal_requestRequest
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

(defclass dwa::goal_requestResponse
  :super ros::object
  :slots (_goal_x _goal_y ))

(defmethod dwa::goal_requestResponse
  (:init
   (&key
    ((:goal_x __goal_x) 0)
    ((:goal_y __goal_y) 0)
    )
   (send-super :init)
   (setq _goal_x (round __goal_x))
   (setq _goal_y (round __goal_y))
   self)
  (:goal_x
   (&optional __goal_x)
   (if __goal_x (setq _goal_x __goal_x)) _goal_x)
  (:goal_y
   (&optional __goal_y)
   (if __goal_y (setq _goal_y __goal_y)) _goal_y)
  (:serialization-length
   ()
   (+
    ;; int64 _goal_x
    8
    ;; int64 _goal_y
    8
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
   ;;
   self)
  )

(defclass dwa::goal_request
  :super ros::object
  :slots ())

(setf (get dwa::goal_request :md5sum-) "499690bc96645941011b473b24eb20ab")
(setf (get dwa::goal_request :datatype-) "dwa/goal_request")
(setf (get dwa::goal_request :request) dwa::goal_requestRequest)
(setf (get dwa::goal_request :response) dwa::goal_requestResponse)

(defmethod dwa::goal_requestRequest
  (:response () (instance dwa::goal_requestResponse :init)))

(setf (get dwa::goal_requestRequest :md5sum-) "499690bc96645941011b473b24eb20ab")
(setf (get dwa::goal_requestRequest :datatype-) "dwa/goal_requestRequest")
(setf (get dwa::goal_requestRequest :definition-)
      "string bot_name
---
int64 goal_x
int64 goal_y
")

(setf (get dwa::goal_requestResponse :md5sum-) "499690bc96645941011b473b24eb20ab")
(setf (get dwa::goal_requestResponse :datatype-) "dwa/goal_requestResponse")
(setf (get dwa::goal_requestResponse :definition-)
      "string bot_name
---
int64 goal_x
int64 goal_y
")



(provide :dwa/goal_request "499690bc96645941011b473b24eb20ab")


