; Auto-generated. Do not edit!


(cl:in-package dwa-srv)


;//! \htmlinclude GoalCompletion-request.msg.html

(cl:defclass <GoalCompletion-request> (roslisp-msg-protocol:ros-message)
  ((bot_name
    :reader bot_name
    :initarg :bot_name
    :type cl:string
    :initform "")
   (stamp
    :reader stamp
    :initarg :stamp
    :type cl:real
    :initform 0))
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

(cl:ensure-generic-function 'stamp-val :lambda-list '(m))
(cl:defmethod stamp-val ((m <GoalCompletion-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dwa-srv:stamp-val is deprecated.  Use dwa-srv:stamp instead.")
  (stamp m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GoalCompletion-request>) ostream)
  "Serializes a message object of type '<GoalCompletion-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'bot_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'bot_name))
  (cl:let ((__sec (cl:floor (cl:slot-value msg 'stamp)))
        (__nsec (cl:round (cl:* 1e9 (cl:- (cl:slot-value msg 'stamp) (cl:floor (cl:slot-value msg 'stamp)))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream))
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
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'stamp) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9))))
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
  "42e3abf21647402779ca4cba1b57445d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GoalCompletion-request)))
  "Returns md5sum for a message object of type 'GoalCompletion-request"
  "42e3abf21647402779ca4cba1b57445d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GoalCompletion-request>)))
  "Returns full string definition for message of type '<GoalCompletion-request>"
  (cl:format cl:nil "string bot_name~%time stamp~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GoalCompletion-request)))
  "Returns full string definition for message of type 'GoalCompletion-request"
  (cl:format cl:nil "string bot_name~%time stamp~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GoalCompletion-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'bot_name))
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GoalCompletion-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GoalCompletion-request
    (cl:cons ':bot_name (bot_name msg))
    (cl:cons ':stamp (stamp msg))
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
  "42e3abf21647402779ca4cba1b57445d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GoalCompletion-response)))
  "Returns md5sum for a message object of type 'GoalCompletion-response"
  "42e3abf21647402779ca4cba1b57445d")
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