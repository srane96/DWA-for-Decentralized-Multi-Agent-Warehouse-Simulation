; Auto-generated. Do not edit!


(cl:in-package dwa-srv)


;//! \htmlinclude GoalCompletion-request.msg.html

(cl:defclass <GoalCompletion-request> (roslisp-msg-protocol:ros-message)
  ((bot_name
    :reader bot_name
    :initarg :bot_name
    :type cl:string
    :initform "")
   (goal_name
    :reader goal_name
    :initarg :goal_name
    :type cl:string
    :initform "")
   (total_time
    :reader total_time
    :initarg :total_time
    :type cl:float
    :initform 0.0)
   (goal_success
    :reader goal_success
    :initarg :goal_success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass GoalCompletion-request (<GoalCompletion-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GoalCompletion-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GoalCompletion-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dwa-srv:<GoalCompletion-request> is deprecated: use dwa-srv:GoalCompletion-request instead.")))

(cl:ensure-generic-function 'bot_name-val :lambda-list '(m))
(cl:defmethod bot_name-val ((m <GoalCompletion-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dwa-srv:bot_name-val is deprecated.  Use dwa-srv:bot_name instead.")
  (bot_name m))

(cl:ensure-generic-function 'goal_name-val :lambda-list '(m))
(cl:defmethod goal_name-val ((m <GoalCompletion-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dwa-srv:goal_name-val is deprecated.  Use dwa-srv:goal_name instead.")
  (goal_name m))

(cl:ensure-generic-function 'total_time-val :lambda-list '(m))
(cl:defmethod total_time-val ((m <GoalCompletion-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dwa-srv:total_time-val is deprecated.  Use dwa-srv:total_time instead.")
  (total_time m))

(cl:ensure-generic-function 'goal_success-val :lambda-list '(m))
(cl:defmethod goal_success-val ((m <GoalCompletion-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dwa-srv:goal_success-val is deprecated.  Use dwa-srv:goal_success instead.")
  (goal_success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GoalCompletion-request>) ostream)
  "Serializes a message object of type '<GoalCompletion-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'bot_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'bot_name))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'goal_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'goal_name))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'total_time))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'goal_success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GoalCompletion-request>) istream)
  "Deserializes a message object of type '<GoalCompletion-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'bot_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'bot_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'goal_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'goal_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'total_time) (roslisp-utils:decode-double-float-bits bits)))
    (cl:setf (cl:slot-value msg 'goal_success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GoalCompletion-request>)))
  "Returns string type for a service object of type '<GoalCompletion-request>"
  "dwa/GoalCompletionRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GoalCompletion-request)))
  "Returns string type for a service object of type 'GoalCompletion-request"
  "dwa/GoalCompletionRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GoalCompletion-request>)))
  "Returns md5sum for a message object of type '<GoalCompletion-request>"
  "14abb92b206f3d51f81cd4863d4d4a6e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GoalCompletion-request)))
  "Returns md5sum for a message object of type 'GoalCompletion-request"
  "14abb92b206f3d51f81cd4863d4d4a6e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GoalCompletion-request>)))
  "Returns full string definition for message of type '<GoalCompletion-request>"
  (cl:format cl:nil "string bot_name~%string goal_name~%float64 total_time~%bool goal_success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GoalCompletion-request)))
  "Returns full string definition for message of type 'GoalCompletion-request"
  (cl:format cl:nil "string bot_name~%string goal_name~%float64 total_time~%bool goal_success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GoalCompletion-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'bot_name))
     4 (cl:length (cl:slot-value msg 'goal_name))
     8
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GoalCompletion-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GoalCompletion-request
    (cl:cons ':bot_name (bot_name msg))
    (cl:cons ':goal_name (goal_name msg))
    (cl:cons ':total_time (total_time msg))
    (cl:cons ':goal_success (goal_success msg))
))
;//! \htmlinclude GoalCompletion-response.msg.html

(cl:defclass <GoalCompletion-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass GoalCompletion-response (<GoalCompletion-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GoalCompletion-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GoalCompletion-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dwa-srv:<GoalCompletion-response> is deprecated: use dwa-srv:GoalCompletion-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <GoalCompletion-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dwa-srv:success-val is deprecated.  Use dwa-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GoalCompletion-response>) ostream)
  "Serializes a message object of type '<GoalCompletion-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GoalCompletion-response>) istream)
  "Deserializes a message object of type '<GoalCompletion-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GoalCompletion-response>)))
  "Returns string type for a service object of type '<GoalCompletion-response>"
  "dwa/GoalCompletionResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GoalCompletion-response)))
  "Returns string type for a service object of type 'GoalCompletion-response"
  "dwa/GoalCompletionResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GoalCompletion-response>)))
  "Returns md5sum for a message object of type '<GoalCompletion-response>"
  "14abb92b206f3d51f81cd4863d4d4a6e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GoalCompletion-response)))
  "Returns md5sum for a message object of type 'GoalCompletion-response"
  "14abb92b206f3d51f81cd4863d4d4a6e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GoalCompletion-response>)))
  "Returns full string definition for message of type '<GoalCompletion-response>"
  (cl:format cl:nil "bool success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GoalCompletion-response)))
  "Returns full string definition for message of type 'GoalCompletion-response"
  (cl:format cl:nil "bool success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GoalCompletion-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GoalCompletion-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GoalCompletion-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GoalCompletion)))
  'GoalCompletion-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GoalCompletion)))
  'GoalCompletion-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GoalCompletion)))
  "Returns string type for a service object of type '<GoalCompletion>"
  "dwa/GoalCompletion")