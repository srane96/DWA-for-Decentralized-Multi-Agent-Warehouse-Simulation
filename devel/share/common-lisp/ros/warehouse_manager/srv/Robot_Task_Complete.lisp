; Auto-generated. Do not edit!


(cl:in-package warehouse_manager-srv)


;//! \htmlinclude Robot_Task_Complete-request.msg.html

(cl:defclass <Robot_Task_Complete-request> (roslisp-msg-protocol:ros-message)
  ((robot_name
    :reader robot_name
    :initarg :robot_name
    :type cl:string
    :initform "")
   (time_taken
    :reader time_taken
    :initarg :time_taken
    :type cl:float
    :initform 0.0)
   (shortest_distance
    :reader shortest_distance
    :initarg :shortest_distance
    :type cl:float
    :initform 0.0))
)

(cl:defclass Robot_Task_Complete-request (<Robot_Task_Complete-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Robot_Task_Complete-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Robot_Task_Complete-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name warehouse_manager-srv:<Robot_Task_Complete-request> is deprecated: use warehouse_manager-srv:Robot_Task_Complete-request instead.")))

(cl:ensure-generic-function 'robot_name-val :lambda-list '(m))
(cl:defmethod robot_name-val ((m <Robot_Task_Complete-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader warehouse_manager-srv:robot_name-val is deprecated.  Use warehouse_manager-srv:robot_name instead.")
  (robot_name m))

(cl:ensure-generic-function 'time_taken-val :lambda-list '(m))
(cl:defmethod time_taken-val ((m <Robot_Task_Complete-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader warehouse_manager-srv:time_taken-val is deprecated.  Use warehouse_manager-srv:time_taken instead.")
  (time_taken m))

(cl:ensure-generic-function 'shortest_distance-val :lambda-list '(m))
(cl:defmethod shortest_distance-val ((m <Robot_Task_Complete-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader warehouse_manager-srv:shortest_distance-val is deprecated.  Use warehouse_manager-srv:shortest_distance instead.")
  (shortest_distance m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Robot_Task_Complete-request>) ostream)
  "Serializes a message object of type '<Robot_Task_Complete-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'robot_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'robot_name))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'time_taken))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'shortest_distance))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Robot_Task_Complete-request>) istream)
  "Deserializes a message object of type '<Robot_Task_Complete-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'robot_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'robot_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'time_taken) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'shortest_distance) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Robot_Task_Complete-request>)))
  "Returns string type for a service object of type '<Robot_Task_Complete-request>"
  "warehouse_manager/Robot_Task_CompleteRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Robot_Task_Complete-request)))
  "Returns string type for a service object of type 'Robot_Task_Complete-request"
  "warehouse_manager/Robot_Task_CompleteRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Robot_Task_Complete-request>)))
  "Returns md5sum for a message object of type '<Robot_Task_Complete-request>"
  "d97d7930a530aa4c1ce9a0a5e1c268f1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Robot_Task_Complete-request)))
  "Returns md5sum for a message object of type 'Robot_Task_Complete-request"
  "d97d7930a530aa4c1ce9a0a5e1c268f1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Robot_Task_Complete-request>)))
  "Returns full string definition for message of type '<Robot_Task_Complete-request>"
  (cl:format cl:nil "string robot_name~%float64 time_taken~%float64 shortest_distance~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Robot_Task_Complete-request)))
  "Returns full string definition for message of type 'Robot_Task_Complete-request"
  (cl:format cl:nil "string robot_name~%float64 time_taken~%float64 shortest_distance~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Robot_Task_Complete-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'robot_name))
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Robot_Task_Complete-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Robot_Task_Complete-request
    (cl:cons ':robot_name (robot_name msg))
    (cl:cons ':time_taken (time_taken msg))
    (cl:cons ':shortest_distance (shortest_distance msg))
))
;//! \htmlinclude Robot_Task_Complete-response.msg.html

(cl:defclass <Robot_Task_Complete-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass Robot_Task_Complete-response (<Robot_Task_Complete-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Robot_Task_Complete-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Robot_Task_Complete-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name warehouse_manager-srv:<Robot_Task_Complete-response> is deprecated: use warehouse_manager-srv:Robot_Task_Complete-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Robot_Task_Complete-response>) ostream)
  "Serializes a message object of type '<Robot_Task_Complete-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Robot_Task_Complete-response>) istream)
  "Deserializes a message object of type '<Robot_Task_Complete-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Robot_Task_Complete-response>)))
  "Returns string type for a service object of type '<Robot_Task_Complete-response>"
  "warehouse_manager/Robot_Task_CompleteResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Robot_Task_Complete-response)))
  "Returns string type for a service object of type 'Robot_Task_Complete-response"
  "warehouse_manager/Robot_Task_CompleteResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Robot_Task_Complete-response>)))
  "Returns md5sum for a message object of type '<Robot_Task_Complete-response>"
  "d97d7930a530aa4c1ce9a0a5e1c268f1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Robot_Task_Complete-response)))
  "Returns md5sum for a message object of type 'Robot_Task_Complete-response"
  "d97d7930a530aa4c1ce9a0a5e1c268f1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Robot_Task_Complete-response>)))
  "Returns full string definition for message of type '<Robot_Task_Complete-response>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Robot_Task_Complete-response)))
  "Returns full string definition for message of type 'Robot_Task_Complete-response"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Robot_Task_Complete-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Robot_Task_Complete-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Robot_Task_Complete-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Robot_Task_Complete)))
  'Robot_Task_Complete-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Robot_Task_Complete)))
  'Robot_Task_Complete-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Robot_Task_Complete)))
  "Returns string type for a service object of type '<Robot_Task_Complete>"
  "warehouse_manager/Robot_Task_Complete")