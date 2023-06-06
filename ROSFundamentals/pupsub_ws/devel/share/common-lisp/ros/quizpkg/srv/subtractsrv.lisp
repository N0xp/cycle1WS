; Auto-generated. Do not edit!


(cl:in-package quizpkg-srv)


;//! \htmlinclude subtractsrv-request.msg.html

(cl:defclass <subtractsrv-request> (roslisp-msg-protocol:ros-message)
  ((a
    :reader a
    :initarg :a
    :type cl:integer
    :initform 0)
   (b
    :reader b
    :initarg :b
    :type cl:integer
    :initform 0))
)

(cl:defclass subtractsrv-request (<subtractsrv-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <subtractsrv-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'subtractsrv-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name quizpkg-srv:<subtractsrv-request> is deprecated: use quizpkg-srv:subtractsrv-request instead.")))

(cl:ensure-generic-function 'a-val :lambda-list '(m))
(cl:defmethod a-val ((m <subtractsrv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader quizpkg-srv:a-val is deprecated.  Use quizpkg-srv:a instead.")
  (a m))

(cl:ensure-generic-function 'b-val :lambda-list '(m))
(cl:defmethod b-val ((m <subtractsrv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader quizpkg-srv:b-val is deprecated.  Use quizpkg-srv:b instead.")
  (b m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <subtractsrv-request>) ostream)
  "Serializes a message object of type '<subtractsrv-request>"
  (cl:let* ((signed (cl:slot-value msg 'a)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'b)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <subtractsrv-request>) istream)
  "Deserializes a message object of type '<subtractsrv-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'a) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'b) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<subtractsrv-request>)))
  "Returns string type for a service object of type '<subtractsrv-request>"
  "quizpkg/subtractsrvRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'subtractsrv-request)))
  "Returns string type for a service object of type 'subtractsrv-request"
  "quizpkg/subtractsrvRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<subtractsrv-request>)))
  "Returns md5sum for a message object of type '<subtractsrv-request>"
  "9eb98bb9850f1c1774cf3ff3d5ba1aec")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'subtractsrv-request)))
  "Returns md5sum for a message object of type 'subtractsrv-request"
  "9eb98bb9850f1c1774cf3ff3d5ba1aec")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<subtractsrv-request>)))
  "Returns full string definition for message of type '<subtractsrv-request>"
  (cl:format cl:nil "int64 a~%int64 b~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'subtractsrv-request)))
  "Returns full string definition for message of type 'subtractsrv-request"
  (cl:format cl:nil "int64 a~%int64 b~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <subtractsrv-request>))
  (cl:+ 0
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <subtractsrv-request>))
  "Converts a ROS message object to a list"
  (cl:list 'subtractsrv-request
    (cl:cons ':a (a msg))
    (cl:cons ':b (b msg))
))
;//! \htmlinclude subtractsrv-response.msg.html

(cl:defclass <subtractsrv-response> (roslisp-msg-protocol:ros-message)
  ((sub
    :reader sub
    :initarg :sub
    :type cl:integer
    :initform 0))
)

(cl:defclass subtractsrv-response (<subtractsrv-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <subtractsrv-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'subtractsrv-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name quizpkg-srv:<subtractsrv-response> is deprecated: use quizpkg-srv:subtractsrv-response instead.")))

(cl:ensure-generic-function 'sub-val :lambda-list '(m))
(cl:defmethod sub-val ((m <subtractsrv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader quizpkg-srv:sub-val is deprecated.  Use quizpkg-srv:sub instead.")
  (sub m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <subtractsrv-response>) ostream)
  "Serializes a message object of type '<subtractsrv-response>"
  (cl:let* ((signed (cl:slot-value msg 'sub)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <subtractsrv-response>) istream)
  "Deserializes a message object of type '<subtractsrv-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'sub) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<subtractsrv-response>)))
  "Returns string type for a service object of type '<subtractsrv-response>"
  "quizpkg/subtractsrvResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'subtractsrv-response)))
  "Returns string type for a service object of type 'subtractsrv-response"
  "quizpkg/subtractsrvResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<subtractsrv-response>)))
  "Returns md5sum for a message object of type '<subtractsrv-response>"
  "9eb98bb9850f1c1774cf3ff3d5ba1aec")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'subtractsrv-response)))
  "Returns md5sum for a message object of type 'subtractsrv-response"
  "9eb98bb9850f1c1774cf3ff3d5ba1aec")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<subtractsrv-response>)))
  "Returns full string definition for message of type '<subtractsrv-response>"
  (cl:format cl:nil "int64 sub~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'subtractsrv-response)))
  "Returns full string definition for message of type 'subtractsrv-response"
  (cl:format cl:nil "int64 sub~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <subtractsrv-response>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <subtractsrv-response>))
  "Converts a ROS message object to a list"
  (cl:list 'subtractsrv-response
    (cl:cons ':sub (sub msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'subtractsrv)))
  'subtractsrv-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'subtractsrv)))
  'subtractsrv-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'subtractsrv)))
  "Returns string type for a service object of type '<subtractsrv>"
  "quizpkg/subtractsrv")