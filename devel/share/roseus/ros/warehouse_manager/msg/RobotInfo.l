;; Auto-generated. Do not edit!


(when (boundp 'warehouse_manager::RobotInfo)
  (if (not (find-package "WAREHOUSE_MANAGER"))
    (make-package "WAREHOUSE_MANAGER"))
  (shadow 'RobotInfo (find-package "WAREHOUSE_MANAGER")))
(unless (find-package "WAREHOUSE_MANAGER::ROBOTINFO")
  (make-package "WAREHOUSE_MANAGER::ROBOTINFO"))

(in-package "ROS")
;;//! \htmlinclude RobotInfo.msg.html
(if (not (find-package "NAV_MSGS"))
  (ros::roseus-add-msgs "nav_msgs"))


(defclass warehouse_manager::RobotInfo
  :super ros::object
  :slots (_positions _yaws _labels ))

(defmethod warehouse_manager::RobotInfo
  (:init
   (&key
    ((:positions __positions) (let (r) (dotimes (i 0) (push (instance nav_msgs::Odometry :init) r)) r))
    ((:yaws __yaws) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:labels __labels) (make-array 0 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _positions __positions)
   (setq _yaws __yaws)
   (setq _labels __labels)
   self)
  (:positions
   (&rest __positions)
   (if (keywordp (car __positions))
       (send* _positions __positions)
     (progn
       (if __positions (setq _positions (car __positions)))
       _positions)))
  (:yaws
   (&optional __yaws)
   (if __yaws (setq _yaws __yaws)) _yaws)
  (:labels
   (&optional __labels)
   (if __labels (setq _labels __labels)) _labels)
  (:serialization-length
   ()
   (+
    ;; nav_msgs/Odometry[] _positions
    (apply #'+ (send-all _positions :serialization-length)) 4
    ;; float64[] _yaws
    (* 8    (length _yaws)) 4
    ;; int32[] _labels
    (* 4    (length _labels)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; nav_msgs/Odometry[] _positions
     (write-long (length _positions) s)
     (dolist (elem _positions)
       (send elem :serialize s)
       )
     ;; float64[] _yaws
     (write-long (length _yaws) s)
     (dotimes (i (length _yaws))
       (sys::poke (elt _yaws i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; int32[] _labels
     (write-long (length _labels) s)
     (dotimes (i (length _labels))
       (write-long (elt _labels i) s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; nav_msgs/Odometry[] _positions
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _positions (let (r) (dotimes (i n) (push (instance nav_msgs::Odometry :init) r)) r))
     (dolist (elem- _positions)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; float64[] _yaws
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _yaws (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _yaws i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; int32[] _labels
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _labels (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _labels i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(setf (get warehouse_manager::RobotInfo :md5sum-) "7a59c5f1b25ddb3f59ddda2688468de4")
(setf (get warehouse_manager::RobotInfo :datatype-) "warehouse_manager/RobotInfo")
(setf (get warehouse_manager::RobotInfo :definition-)
      "nav_msgs/Odometry[] positions
float64[] yaws
int32[] labels

================================================================================
MSG: nav_msgs/Odometry
# This represents an estimate of a position and velocity in free space.  
# The pose in this message should be specified in the coordinate frame given by header.frame_id.
# The twist in this message should be specified in the coordinate frame given by the child_frame_id
Header header
string child_frame_id
geometry_msgs/PoseWithCovariance pose
geometry_msgs/TwistWithCovariance twist

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id

================================================================================
MSG: geometry_msgs/PoseWithCovariance
# This represents a pose in free space with uncertainty.

Pose pose

# Row-major representation of the 6x6 covariance matrix
# The orientation parameters use a fixed-axis representation.
# In order, the parameters are:
# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)
float64[36] covariance

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

================================================================================
MSG: geometry_msgs/TwistWithCovariance
# This expresses velocity in free space with uncertainty.

Twist twist

# Row-major representation of the 6x6 covariance matrix
# The orientation parameters use a fixed-axis representation.
# In order, the parameters are:
# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)
float64[36] covariance

================================================================================
MSG: geometry_msgs/Twist
# This expresses velocity in free space broken into its linear and angular parts.
Vector3  linear
Vector3  angular

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
")



(provide :warehouse_manager/RobotInfo "7a59c5f1b25ddb3f59ddda2688468de4")


