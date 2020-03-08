
(cl:in-package :asdf)

(defsystem "dwa-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "GoalCompletion" :depends-on ("_package_GoalCompletion"))
    (:file "_package_GoalCompletion" :depends-on ("_package"))
    (:file "GoalRequest" :depends-on ("_package_GoalRequest"))
    (:file "_package_GoalRequest" :depends-on ("_package"))
  ))