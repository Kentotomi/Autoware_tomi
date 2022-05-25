; Auto-generated. Do not edit!


(cl:in-package autoware_map_msgs-msg)


;//! \htmlinclude LaneRelation.msg.html

(cl:defclass <LaneRelation> (roslisp-msg-protocol:ros-message)
  ((lane_id
    :reader lane_id
    :initarg :lane_id
    :type cl:integer
    :initform 0)
   (next_lane_id
    :reader next_lane_id
    :initarg :next_lane_id
    :type cl:integer
    :initform 0)
   (blinker
    :reader blinker
    :initarg :blinker
    :type cl:integer
    :initform 0))
)

(cl:defclass LaneRelation (<LaneRelation>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LaneRelation>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LaneRelation)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name autoware_map_msgs-msg:<LaneRelation> is deprecated: use autoware_map_msgs-msg:LaneRelation instead.")))

(cl:ensure-generic-function 'lane_id-val :lambda-list '(m))
(cl:defmethod lane_id-val ((m <LaneRelation>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader autoware_map_msgs-msg:lane_id-val is deprecated.  Use autoware_map_msgs-msg:lane_id instead.")
  (lane_id m))

(cl:ensure-generic-function 'next_lane_id-val :lambda-list '(m))
(cl:defmethod next_lane_id-val ((m <LaneRelation>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader autoware_map_msgs-msg:next_lane_id-val is deprecated.  Use autoware_map_msgs-msg:next_lane_id instead.")
  (next_lane_id m))

(cl:ensure-generic-function 'blinker-val :lambda-list '(m))
(cl:defmethod blinker-val ((m <LaneRelation>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader autoware_map_msgs-msg:blinker-val is deprecated.  Use autoware_map_msgs-msg:blinker instead.")
  (blinker m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<LaneRelation>)))
    "Constants for message type '<LaneRelation>"
  '((:NONE . 0)
    (:LEFT . 1)
    (:RIGHT . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'LaneRelation)))
    "Constants for message type 'LaneRelation"
  '((:NONE . 0)
    (:LEFT . 1)
    (:RIGHT . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LaneRelation>) ostream)
  "Serializes a message object of type '<LaneRelation>"
  (cl:let* ((signed (cl:slot-value msg 'lane_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'next_lane_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'blinker)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LaneRelation>) istream)
  "Deserializes a message object of type '<LaneRelation>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'lane_id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'next_lane_id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'blinker) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LaneRelation>)))
  "Returns string type for a message object of type '<LaneRelation>"
  "autoware_map_msgs/LaneRelation")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LaneRelation)))
  "Returns string type for a message object of type 'LaneRelation"
  "autoware_map_msgs/LaneRelation")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LaneRelation>)))
  "Returns md5sum for a message object of type '<LaneRelation>"
  "b3dff6505b3e88becc76b5332fcd57ed")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LaneRelation)))
  "Returns md5sum for a message object of type 'LaneRelation"
  "b3dff6505b3e88becc76b5332fcd57ed")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LaneRelation>)))
  "Returns full string definition for message of type '<LaneRelation>"
  (cl:format cl:nil "# This represents lane connections in a map.~%~%# BlinkerType~%uint8 None = 0~%uint8 Left = 1~%uint8 Right = 2~%~%# Id of refering Lane object.~%int32 lane_id~%~%# Id of Lane objects that follows after refering lane. ~%int32 next_lane_id~%~%# Blinker that must be lit when doing driving towards the next_lane.~%# Must be one of \"Blinker Type\"~%# e.g. if next_lane_id is left turning lane in intersection, then blinker = LEFT~%int32 blinker~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LaneRelation)))
  "Returns full string definition for message of type 'LaneRelation"
  (cl:format cl:nil "# This represents lane connections in a map.~%~%# BlinkerType~%uint8 None = 0~%uint8 Left = 1~%uint8 Right = 2~%~%# Id of refering Lane object.~%int32 lane_id~%~%# Id of Lane objects that follows after refering lane. ~%int32 next_lane_id~%~%# Blinker that must be lit when doing driving towards the next_lane.~%# Must be one of \"Blinker Type\"~%# e.g. if next_lane_id is left turning lane in intersection, then blinker = LEFT~%int32 blinker~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LaneRelation>))
  (cl:+ 0
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LaneRelation>))
  "Converts a ROS message object to a list"
  (cl:list 'LaneRelation
    (cl:cons ':lane_id (lane_id msg))
    (cl:cons ':next_lane_id (next_lane_id msg))
    (cl:cons ':blinker (blinker msg))
))
