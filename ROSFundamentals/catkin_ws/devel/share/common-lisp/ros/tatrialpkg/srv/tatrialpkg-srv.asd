
(cl:in-package :asdf)

(defsystem "tatrialpkg-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "AddTwoInit" :depends-on ("_package_AddTwoInit"))
    (:file "_package_AddTwoInit" :depends-on ("_package"))
  ))