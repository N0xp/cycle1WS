
(cl:in-package :asdf)

(defsystem "quizpkg-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "subtractsrv" :depends-on ("_package_subtractsrv"))
    (:file "_package_subtractsrv" :depends-on ("_package"))
  ))