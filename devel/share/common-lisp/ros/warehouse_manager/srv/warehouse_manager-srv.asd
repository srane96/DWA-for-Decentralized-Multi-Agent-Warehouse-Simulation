
(cl:in-package :asdf)

(defsystem "warehouse_manager-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "Robot_Task_Complete" :depends-on ("_package_Robot_Task_Complete"))
    (:file "_package_Robot_Task_Complete" :depends-on ("_package"))
    (:file "Robot_Task_Request" :depends-on ("_package_Robot_Task_Request"))
    (:file "_package_Robot_Task_Request" :depends-on ("_package"))
  ))