
(cl:in-package :asdf)

(defsystem "warehouse_manager-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :nav_msgs-msg
)
  :components ((:file "_package")
    (:file "RobotInfo" :depends-on ("_package_RobotInfo"))
    (:file "_package_RobotInfo" :depends-on ("_package"))
    (:file "TaskInfo" :depends-on ("_package_TaskInfo"))
    (:file "_package_TaskInfo" :depends-on ("_package"))
  ))