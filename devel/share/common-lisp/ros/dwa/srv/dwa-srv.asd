
(cl:in-package :asdf)

(defsystem "dwa-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "GoalRequest" :depends-on ("_package_GoalRequest"))
    (:file "_package_GoalRequest" :depends-on ("_package"))
  ))