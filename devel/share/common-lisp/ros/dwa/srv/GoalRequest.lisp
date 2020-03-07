; Auto-generated. Do not edit!


(cl:in-package dwa-srv)


;//! \htmlinclude GoalRequest-request.msg.html

(cl:defclass <GoalRequest-request> (roslisp-msg-protocol:ros-message)
  ((bot_name
    :reader bot_name
    :initarg :bot_name
    :type cl:string
    :initform ""))
)

(cl:defclass GoalRequest-request (<GoalRequest-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GoalRequest-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GoalRequest-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dwa-srv:<GoalRequest-request> is deprecated: use dwa-srv:GoalRequest-request instead.")))

(cl:ensure-generic-function 'bot_name-val :lambda-list '(m))
(cl:defmethod bot_name-val ((m <GoalRequest-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dwa-srv:bot_name-val is deprecated.  Use dwa-srv:bot_name instead.")
  (bot_name m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GoalRequest-request>) ostream)
  "Serializes a message object of type '<GoalRequest-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'bot_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'bot_name))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GoalRequest-request>) istream)
  "Deserializes a message object of type '<GoalRequest-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'bot_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'bot_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GoalRequest-request>)))
  "Returns string type for a service object of type '<GoalRequest-request>"
  "dwa/GoalRequestRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GoalRequest-request)))
  "Returns string type for a service object of type 'GoalRequest-request"
  "dwa/GoalRequestRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GoalRequest-request>)))
  "Returns md5sum for a message object of type '<GoalRequest-request>"
  "f89d6f624961c5b5db599ef712099bcc")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GoalRequest-request)))
  "Returns md5sum for a message object of type 'GoalRequest-request"
  "f89d6f624961c5b5db599ef712099bcc")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GoalRequest-request>)))
  "Returns full string definition for message of type '<GoalRequest-request>"
  (cl:format cl:nil "string bot_name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GoalRequest-request)))
  "Returns full string definition for message of type 'GoalRequest-request"
  (cl:format cl:nil "string bot_name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GoalRequest-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'bot_name))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GoalRequest-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GoalRequest-request
    (cl:cons ':bot_name (bot_name msg))
))
;//! \htmlinclude GoalRequest-response.msg.html

(cl:defclass <GoalRequest-response> (roslisp-msg-protocol:ros-message)
  ((goal_x
    :reader goal_x
    :initarg :goal_x
    :type cl:integer
    :initform 0)
   (goal_y
    :reader goal_y
    :initarg :goal_y
    :type cl:integer
    :initform 0)
   (success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass GoalRequest-response (<GoalRequest-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GoalRequest-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GoalRequest-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dwa-srv:<GoalRequest-response> is deprecated: use dwa-srv:GoalRequest-response instead.")))

(cl:ensure-generic-function 'goal_x-val :lambda-list '(m))
(cl:defmethod goal_x-val ((m <GoalRequest-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dwa-srv:goal_x-val is deprecated.  Use dwa-srv:goal_x instead.")
  (goal_x m))

(cl:ensure-generic-function 'goal_y-val :lambda-list '(m))
(cl:defmethod goal_y-val ((m <GoalRequest-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dwa-srv:goal_y-val is deprecated.  Use dwa-srv:goal_y instead.")
  (goal_y m))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <GoalRequest-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dwa-srv:success-val is deprecated.  Use dwa-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GoalRequest-response>) ostream)
  "Serializes a message object of type '<GoalRequest-response>"
  (cl:let* ((signed (cl:slot-value msg 'goal_x)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'goal_y)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GoalRequest-response>) istream)
  "Deserializes a message object of type '<GoalRequest-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'goal_x) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'goal_y) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GoalRequest-response>)))
  "Returns string type for a service object of type '<GoalRequest-response>"
  "dwa/GoalRequestResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GoalRequest-response)))
  "Returns string type for a service object of type 'GoalRequest-response"
  "dwa/GoalRequestResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GoalRequest-response>)))
  "Returns md5sum for a message object of type '<GoalRequest-response>"
  "f89d6f624961c5b5db599ef712099bcc")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GoalRequest-response)))
  "Returns md5sum for a message object of type 'GoalRequest-response"
  "f89d6f624961c5b5db599ef712099bcc")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GoalRequest-response>)))
  "Returns full string definition for message of type '<GoalRequest-response>"
  (cl:format cl:nil "int64 goal_x~%int64 goal_y~%bool success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GoalRequest-response)))
  "Returns full string definition for message of type 'GoalRequest-response"
  (cl:format cl:nil "int64 goal_x~%int64 goal_y~%bool success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GoalRequest-response>))
  (cl:+ 0
     8
     8
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GoalRequest-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GoalRequest-response
    (cl:cons ':goal_x (goal_x msg))
    (cl:cons ':goal_y (goal_y msg))
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GoalRequest)))
  'GoalRequest-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GoalRequest)))
  'GoalRequest-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GoalRequest)))
  "Returns string type for a service object of type '<GoalRequest>"
  "dwa/GoalRequest")