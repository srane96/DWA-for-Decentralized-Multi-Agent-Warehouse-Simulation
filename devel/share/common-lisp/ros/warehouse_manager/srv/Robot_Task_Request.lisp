; Auto-generated. Do not edit!


(cl:in-package warehouse_manager-srv)


;//! \htmlinclude Robot_Task_Request-request.msg.html

(cl:defclass <Robot_Task_Request-request> (roslisp-msg-protocol:ros-message)
  ((name
    :reader name
    :initarg :name
    :type cl:string
    :initform ""))
)

(cl:defclass Robot_Task_Request-request (<Robot_Task_Request-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Robot_Task_Request-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Robot_Task_Request-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name warehouse_manager-srv:<Robot_Task_Request-request> is deprecated: use warehouse_manager-srv:Robot_Task_Request-request instead.")))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <Robot_Task_Request-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader warehouse_manager-srv:name-val is deprecated.  Use warehouse_manager-srv:name instead.")
  (name m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Robot_Task_Request-request>) ostream)
  "Serializes a message object of type '<Robot_Task_Request-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Robot_Task_Request-request>) istream)
  "Deserializes a message object of type '<Robot_Task_Request-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Robot_Task_Request-request>)))
  "Returns string type for a service object of type '<Robot_Task_Request-request>"
  "warehouse_manager/Robot_Task_RequestRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Robot_Task_Request-request)))
  "Returns string type for a service object of type 'Robot_Task_Request-request"
  "warehouse_manager/Robot_Task_RequestRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Robot_Task_Request-request>)))
  "Returns md5sum for a message object of type '<Robot_Task_Request-request>"
  "36a9ef11aba4366f1c5c38340e3f6f3d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Robot_Task_Request-request)))
  "Returns md5sum for a message object of type 'Robot_Task_Request-request"
  "36a9ef11aba4366f1c5c38340e3f6f3d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Robot_Task_Request-request>)))
  "Returns full string definition for message of type '<Robot_Task_Request-request>"
  (cl:format cl:nil "string name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Robot_Task_Request-request)))
  "Returns full string definition for message of type 'Robot_Task_Request-request"
  (cl:format cl:nil "string name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Robot_Task_Request-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'name))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Robot_Task_Request-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Robot_Task_Request-request
    (cl:cons ':name (name msg))
))
;//! \htmlinclude Robot_Task_Request-response.msg.html

(cl:defclass <Robot_Task_Request-response> (roslisp-msg-protocol:ros-message)
  ((x
    :reader x
    :initarg :x
    :type cl:float
    :initform 0.0)
   (y
    :reader y
    :initarg :y
    :type cl:float
    :initform 0.0)
   (task_available
    :reader task_available
    :initarg :task_available
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass Robot_Task_Request-response (<Robot_Task_Request-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Robot_Task_Request-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Robot_Task_Request-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name warehouse_manager-srv:<Robot_Task_Request-response> is deprecated: use warehouse_manager-srv:Robot_Task_Request-response instead.")))

(cl:ensure-generic-function 'x-val :lambda-list '(m))
(cl:defmethod x-val ((m <Robot_Task_Request-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader warehouse_manager-srv:x-val is deprecated.  Use warehouse_manager-srv:x instead.")
  (x m))

(cl:ensure-generic-function 'y-val :lambda-list '(m))
(cl:defmethod y-val ((m <Robot_Task_Request-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader warehouse_manager-srv:y-val is deprecated.  Use warehouse_manager-srv:y instead.")
  (y m))

(cl:ensure-generic-function 'task_available-val :lambda-list '(m))
(cl:defmethod task_available-val ((m <Robot_Task_Request-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader warehouse_manager-srv:task_available-val is deprecated.  Use warehouse_manager-srv:task_available instead.")
  (task_available m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Robot_Task_Request-response>) ostream)
  "Serializes a message object of type '<Robot_Task_Request-response>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'task_available) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Robot_Task_Request-response>) istream)
  "Deserializes a message object of type '<Robot_Task_Request-response>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'x) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'y) (roslisp-utils:decode-double-float-bits bits)))
    (cl:setf (cl:slot-value msg 'task_available) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Robot_Task_Request-response>)))
  "Returns string type for a service object of type '<Robot_Task_Request-response>"
  "warehouse_manager/Robot_Task_RequestResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Robot_Task_Request-response)))
  "Returns string type for a service object of type 'Robot_Task_Request-response"
  "warehouse_manager/Robot_Task_RequestResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Robot_Task_Request-response>)))
  "Returns md5sum for a message object of type '<Robot_Task_Request-response>"
  "36a9ef11aba4366f1c5c38340e3f6f3d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Robot_Task_Request-response)))
  "Returns md5sum for a message object of type 'Robot_Task_Request-response"
  "36a9ef11aba4366f1c5c38340e3f6f3d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Robot_Task_Request-response>)))
  "Returns full string definition for message of type '<Robot_Task_Request-response>"
  (cl:format cl:nil "float64 x~%float64 y~%bool task_available~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Robot_Task_Request-response)))
  "Returns full string definition for message of type 'Robot_Task_Request-response"
  (cl:format cl:nil "float64 x~%float64 y~%bool task_available~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Robot_Task_Request-response>))
  (cl:+ 0
     8
     8
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Robot_Task_Request-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Robot_Task_Request-response
    (cl:cons ':x (x msg))
    (cl:cons ':y (y msg))
    (cl:cons ':task_available (task_available msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Robot_Task_Request)))
  'Robot_Task_Request-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Robot_Task_Request)))
  'Robot_Task_Request-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Robot_Task_Request)))
  "Returns string type for a service object of type '<Robot_Task_Request>"
  "warehouse_manager/Robot_Task_Request")