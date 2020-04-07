; Auto-generated. Do not edit!


(cl:in-package warehouse_manager-msg)


;//! \htmlinclude TaskInfo.msg.html

(cl:defclass <TaskInfo> (roslisp-msg-protocol:ros-message)
  ((robot_list
    :reader robot_list
    :initarg :robot_list
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element ""))
   (task_list
    :reader task_list
    :initarg :task_list
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element "")))
)

(cl:defclass TaskInfo (<TaskInfo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TaskInfo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TaskInfo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name warehouse_manager-msg:<TaskInfo> is deprecated: use warehouse_manager-msg:TaskInfo instead.")))

(cl:ensure-generic-function 'robot_list-val :lambda-list '(m))
(cl:defmethod robot_list-val ((m <TaskInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader warehouse_manager-msg:robot_list-val is deprecated.  Use warehouse_manager-msg:robot_list instead.")
  (robot_list m))

(cl:ensure-generic-function 'task_list-val :lambda-list '(m))
(cl:defmethod task_list-val ((m <TaskInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader warehouse_manager-msg:task_list-val is deprecated.  Use warehouse_manager-msg:task_list instead.")
  (task_list m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TaskInfo>) ostream)
  "Serializes a message object of type '<TaskInfo>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'robot_list))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((__ros_str_len (cl:length ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) ele))
   (cl:slot-value msg 'robot_list))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'task_list))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((__ros_str_len (cl:length ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) ele))
   (cl:slot-value msg 'task_list))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TaskInfo>) istream)
  "Deserializes a message object of type '<TaskInfo>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'robot_list) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'robot_list)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:aref vals i) __ros_str_idx) (cl:code-char (cl:read-byte istream))))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'task_list) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'task_list)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:aref vals i) __ros_str_idx) (cl:code-char (cl:read-byte istream))))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TaskInfo>)))
  "Returns string type for a message object of type '<TaskInfo>"
  "warehouse_manager/TaskInfo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TaskInfo)))
  "Returns string type for a message object of type 'TaskInfo"
  "warehouse_manager/TaskInfo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TaskInfo>)))
  "Returns md5sum for a message object of type '<TaskInfo>"
  "17840239039ae6341a939e8b4e5eeb0c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TaskInfo)))
  "Returns md5sum for a message object of type 'TaskInfo"
  "17840239039ae6341a939e8b4e5eeb0c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TaskInfo>)))
  "Returns full string definition for message of type '<TaskInfo>"
  (cl:format cl:nil "string[] robot_list~%string[] task_list~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TaskInfo)))
  "Returns full string definition for message of type 'TaskInfo"
  (cl:format cl:nil "string[] robot_list~%string[] task_list~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TaskInfo>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'robot_list) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'task_list) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TaskInfo>))
  "Converts a ROS message object to a list"
  (cl:list 'TaskInfo
    (cl:cons ':robot_list (robot_list msg))
    (cl:cons ':task_list (task_list msg))
))
