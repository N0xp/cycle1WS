; Auto-generated. Do not edit!


(cl:in-package tatrialpkg-srv)


;//! \htmlinclude AddTwoInit-request.msg.html

(cl:defclass <AddTwoInit-request> (roslisp-msg-protocol:ros-message)
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

(cl:defclass AddTwoInit-request (<AddTwoInit-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AddTwoInit-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AddTwoInit-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tatrialpkg-srv:<AddTwoInit-request> is deprecated: use tatrialpkg-srv:AddTwoInit-request instead.")))

(cl:ensure-generic-function 'a-val :lambda-list '(m))
(cl:defmethod a-val ((m <AddTwoInit-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tatrialpkg-srv:a-val is deprecated.  Use tatrialpkg-srv:a instead.")
  (a m))

(cl:ensure-generic-function 'b-val :lambda-list '(m))
(cl:defmethod b-val ((m <AddTwoInit-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tatrialpkg-srv:b-val is deprecated.  Use tatrialpkg-srv:b instead.")
  (b m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AddTwoInit-request>) ostream)
  "Serializes a message object of type '<AddTwoInit-request>"
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AddTwoInit-request>) istream)
  "Deserializes a message object of type '<AddTwoInit-request>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AddTwoInit-request>)))
  "Returns string type for a service object of type '<AddTwoInit-request>"
  "tatrialpkg/AddTwoInitRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AddTwoInit-request)))
  "Returns string type for a service object of type 'AddTwoInit-request"
  "tatrialpkg/AddTwoInitRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AddTwoInit-request>)))
  "Returns md5sum for a message object of type '<AddTwoInit-request>"
  "6a2e34150c00229791cc89ff309fff21")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AddTwoInit-request)))
  "Returns md5sum for a message object of type 'AddTwoInit-request"
  "6a2e34150c00229791cc89ff309fff21")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AddTwoInit-request>)))
  "Returns full string definition for message of type '<AddTwoInit-request>"
  (cl:format cl:nil "int64 a~%int64 b~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AddTwoInit-request)))
  "Returns full string definition for message of type 'AddTwoInit-request"
  (cl:format cl:nil "int64 a~%int64 b~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AddTwoInit-request>))
  (cl:+ 0
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AddTwoInit-request>))
  "Converts a ROS message object to a list"
  (cl:list 'AddTwoInit-request
    (cl:cons ':a (a msg))
    (cl:cons ':b (b msg))
))
;//! \htmlinclude AddTwoInit-response.msg.html

(cl:defclass <AddTwoInit-response> (roslisp-msg-protocol:ros-message)
  ((sum
    :reader sum
    :initarg :sum
    :type cl:integer
    :initform 0))
)

(cl:defclass AddTwoInit-response (<AddTwoInit-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AddTwoInit-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AddTwoInit-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tatrialpkg-srv:<AddTwoInit-response> is deprecated: use tatrialpkg-srv:AddTwoInit-response instead.")))

(cl:ensure-generic-function 'sum-val :lambda-list '(m))
(cl:defmethod sum-val ((m <AddTwoInit-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tatrialpkg-srv:sum-val is deprecated.  Use tatrialpkg-srv:sum instead.")
  (sum m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AddTwoInit-response>) ostream)
  "Serializes a message object of type '<AddTwoInit-response>"
  (cl:let* ((signed (cl:slot-value msg 'sum)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AddTwoInit-response>) istream)
  "Deserializes a message object of type '<AddTwoInit-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'sum) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AddTwoInit-response>)))
  "Returns string type for a service object of type '<AddTwoInit-response>"
  "tatrialpkg/AddTwoInitResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AddTwoInit-response)))
  "Returns string type for a service object of type 'AddTwoInit-response"
  "tatrialpkg/AddTwoInitResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AddTwoInit-response>)))
  "Returns md5sum for a message object of type '<AddTwoInit-response>"
  "6a2e34150c00229791cc89ff309fff21")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AddTwoInit-response)))
  "Returns md5sum for a message object of type 'AddTwoInit-response"
  "6a2e34150c00229791cc89ff309fff21")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AddTwoInit-response>)))
  "Returns full string definition for message of type '<AddTwoInit-response>"
  (cl:format cl:nil "int64 sum~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AddTwoInit-response)))
  "Returns full string definition for message of type 'AddTwoInit-response"
  (cl:format cl:nil "int64 sum~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AddTwoInit-response>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AddTwoInit-response>))
  "Converts a ROS message object to a list"
  (cl:list 'AddTwoInit-response
    (cl:cons ':sum (sum msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'AddTwoInit)))
  'AddTwoInit-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'AddTwoInit)))
  'AddTwoInit-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AddTwoInit)))
  "Returns string type for a service object of type '<AddTwoInit>"
  "tatrialpkg/AddTwoInit")