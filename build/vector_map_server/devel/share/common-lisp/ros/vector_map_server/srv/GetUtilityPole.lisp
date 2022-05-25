; Auto-generated. Do not edit!


(cl:in-package vector_map_server-srv)


;//! \htmlinclude GetUtilityPole-request.msg.html

(cl:defclass <GetUtilityPole-request> (roslisp-msg-protocol:ros-message)
  ((pose
    :reader pose
    :initarg :pose
    :type geometry_msgs-msg:PoseStamped
    :initform (cl:make-instance 'geometry_msgs-msg:PoseStamped))
   (waypoints
    :reader waypoints
    :initarg :waypoints
    :type autoware_msgs-msg:Lane
    :initform (cl:make-instance 'autoware_msgs-msg:Lane)))
)

(cl:defclass GetUtilityPole-request (<GetUtilityPole-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetUtilityPole-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetUtilityPole-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vector_map_server-srv:<GetUtilityPole-request> is deprecated: use vector_map_server-srv:GetUtilityPole-request instead.")))

(cl:ensure-generic-function 'pose-val :lambda-list '(m))
(cl:defmethod pose-val ((m <GetUtilityPole-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vector_map_server-srv:pose-val is deprecated.  Use vector_map_server-srv:pose instead.")
  (pose m))

(cl:ensure-generic-function 'waypoints-val :lambda-list '(m))
(cl:defmethod waypoints-val ((m <GetUtilityPole-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vector_map_server-srv:waypoints-val is deprecated.  Use vector_map_server-srv:waypoints instead.")
  (waypoints m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetUtilityPole-request>) ostream)
  "Serializes a message object of type '<GetUtilityPole-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'waypoints) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetUtilityPole-request>) istream)
  "Deserializes a message object of type '<GetUtilityPole-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'waypoints) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetUtilityPole-request>)))
  "Returns string type for a service object of type '<GetUtilityPole-request>"
  "vector_map_server/GetUtilityPoleRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetUtilityPole-request)))
  "Returns string type for a service object of type 'GetUtilityPole-request"
  "vector_map_server/GetUtilityPoleRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetUtilityPole-request>)))
  "Returns md5sum for a message object of type '<GetUtilityPole-request>"
  "3b25ea5b9fa557d465998026b3095820")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetUtilityPole-request)))
  "Returns md5sum for a message object of type 'GetUtilityPole-request"
  "3b25ea5b9fa557d465998026b3095820")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetUtilityPole-request>)))
  "Returns full string definition for message of type '<GetUtilityPole-request>"
  (cl:format cl:nil "geometry_msgs/PoseStamped pose~%autoware_msgs/Lane waypoints~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: autoware_msgs/Lane~%Header header~%int32 increment~%int32 lane_id~%Waypoint[] waypoints~%~%uint32 lane_index~%float32 cost~%float32 closest_object_distance~%float32 closest_object_velocity~%bool is_blocked~%~%================================================================================~%MSG: autoware_msgs/Waypoint~%# global id~%int32 gid ~%# local id~%int32 lid~%geometry_msgs/PoseStamped pose~%geometry_msgs/TwistStamped twist~%DTLane dtlane~%int32 change_flag~%WaypointState wpstate~%~%uint32 lane_id~%uint32 left_lane_id~%uint32 right_lane_id~%uint32 stop_line_id~%float32 cost~%float32 time_cost~%~%# Lane Direction~%# FORWARD        = 0~%# FORWARD_LEFT       = 1~%# FORWARD_RIGHT      = 2~%# BACKWARD        = 3 ~%# BACKWARD_LEFT      = 4~%# BACKWARD_RIGHT    = 5~%# STANDSTILL       = 6~%uint32 direction~%================================================================================~%MSG: geometry_msgs/TwistStamped~%# A twist with reference coordinate frame and timestamp~%Header header~%Twist twist~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: autoware_msgs/DTLane~%float64 dist~%float64 dir~%float64 apara~%float64 r~%float64 slope~%float64 cant~%float64 lw~%float64 rw~%~%================================================================================~%MSG: autoware_msgs/WaypointState~%int32 aid~%uint8 NULLSTATE=0~%~%# lanechange~%uint8 lanechange_state~%~%# bilinker~%uint8 steering_state~%uint8 STR_LEFT=1~%uint8 STR_RIGHT=2~%uint8 STR_STRAIGHT=3~%uint8 STR_BACK=4~%~%uint8 accel_state~%~%uint8 stop_state~%# 1 is stopline, 2 is stop which can only be released manually.~%uint8 TYPE_STOPLINE=1~%uint8 TYPE_STOP=2~%~%uint8 event_state~%uint8 TYPE_EVENT_NULL = 0~%uint8 TYPE_EVENT_GOAL = 1~%uint8 TYPE_EVENT_MIDDLE_GOAL = 2~%uint8 TYPE_EVENT_POSITION_STOP = 3~%uint8 TYPE_EVENT_BUS_STOP = 4~%uint8 TYPE_EVENT_PARKING = 5~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetUtilityPole-request)))
  "Returns full string definition for message of type 'GetUtilityPole-request"
  (cl:format cl:nil "geometry_msgs/PoseStamped pose~%autoware_msgs/Lane waypoints~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: autoware_msgs/Lane~%Header header~%int32 increment~%int32 lane_id~%Waypoint[] waypoints~%~%uint32 lane_index~%float32 cost~%float32 closest_object_distance~%float32 closest_object_velocity~%bool is_blocked~%~%================================================================================~%MSG: autoware_msgs/Waypoint~%# global id~%int32 gid ~%# local id~%int32 lid~%geometry_msgs/PoseStamped pose~%geometry_msgs/TwistStamped twist~%DTLane dtlane~%int32 change_flag~%WaypointState wpstate~%~%uint32 lane_id~%uint32 left_lane_id~%uint32 right_lane_id~%uint32 stop_line_id~%float32 cost~%float32 time_cost~%~%# Lane Direction~%# FORWARD        = 0~%# FORWARD_LEFT       = 1~%# FORWARD_RIGHT      = 2~%# BACKWARD        = 3 ~%# BACKWARD_LEFT      = 4~%# BACKWARD_RIGHT    = 5~%# STANDSTILL       = 6~%uint32 direction~%================================================================================~%MSG: geometry_msgs/TwistStamped~%# A twist with reference coordinate frame and timestamp~%Header header~%Twist twist~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: autoware_msgs/DTLane~%float64 dist~%float64 dir~%float64 apara~%float64 r~%float64 slope~%float64 cant~%float64 lw~%float64 rw~%~%================================================================================~%MSG: autoware_msgs/WaypointState~%int32 aid~%uint8 NULLSTATE=0~%~%# lanechange~%uint8 lanechange_state~%~%# bilinker~%uint8 steering_state~%uint8 STR_LEFT=1~%uint8 STR_RIGHT=2~%uint8 STR_STRAIGHT=3~%uint8 STR_BACK=4~%~%uint8 accel_state~%~%uint8 stop_state~%# 1 is stopline, 2 is stop which can only be released manually.~%uint8 TYPE_STOPLINE=1~%uint8 TYPE_STOP=2~%~%uint8 event_state~%uint8 TYPE_EVENT_NULL = 0~%uint8 TYPE_EVENT_GOAL = 1~%uint8 TYPE_EVENT_MIDDLE_GOAL = 2~%uint8 TYPE_EVENT_POSITION_STOP = 3~%uint8 TYPE_EVENT_BUS_STOP = 4~%uint8 TYPE_EVENT_PARKING = 5~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetUtilityPole-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'waypoints))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetUtilityPole-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetUtilityPole-request
    (cl:cons ':pose (pose msg))
    (cl:cons ':waypoints (waypoints msg))
))
;//! \htmlinclude GetUtilityPole-response.msg.html

(cl:defclass <GetUtilityPole-response> (roslisp-msg-protocol:ros-message)
  ((objects
    :reader objects
    :initarg :objects
    :type vector_map_msgs-msg:UtilityPoleArray
    :initform (cl:make-instance 'vector_map_msgs-msg:UtilityPoleArray)))
)

(cl:defclass GetUtilityPole-response (<GetUtilityPole-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetUtilityPole-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetUtilityPole-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vector_map_server-srv:<GetUtilityPole-response> is deprecated: use vector_map_server-srv:GetUtilityPole-response instead.")))

(cl:ensure-generic-function 'objects-val :lambda-list '(m))
(cl:defmethod objects-val ((m <GetUtilityPole-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vector_map_server-srv:objects-val is deprecated.  Use vector_map_server-srv:objects instead.")
  (objects m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetUtilityPole-response>) ostream)
  "Serializes a message object of type '<GetUtilityPole-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'objects) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetUtilityPole-response>) istream)
  "Deserializes a message object of type '<GetUtilityPole-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'objects) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetUtilityPole-response>)))
  "Returns string type for a service object of type '<GetUtilityPole-response>"
  "vector_map_server/GetUtilityPoleResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetUtilityPole-response)))
  "Returns string type for a service object of type 'GetUtilityPole-response"
  "vector_map_server/GetUtilityPoleResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetUtilityPole-response>)))
  "Returns md5sum for a message object of type '<GetUtilityPole-response>"
  "3b25ea5b9fa557d465998026b3095820")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetUtilityPole-response)))
  "Returns md5sum for a message object of type 'GetUtilityPole-response"
  "3b25ea5b9fa557d465998026b3095820")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetUtilityPole-response>)))
  "Returns full string definition for message of type '<GetUtilityPole-response>"
  (cl:format cl:nil "vector_map_msgs/UtilityPoleArray objects~%~%~%================================================================================~%MSG: vector_map_msgs/UtilityPoleArray~%Header header~%UtilityPole[] data~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: vector_map_msgs/UtilityPole~%# Ver 1.00~%int32 id~%int32 plid~%int32 linkid~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetUtilityPole-response)))
  "Returns full string definition for message of type 'GetUtilityPole-response"
  (cl:format cl:nil "vector_map_msgs/UtilityPoleArray objects~%~%~%================================================================================~%MSG: vector_map_msgs/UtilityPoleArray~%Header header~%UtilityPole[] data~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: vector_map_msgs/UtilityPole~%# Ver 1.00~%int32 id~%int32 plid~%int32 linkid~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetUtilityPole-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'objects))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetUtilityPole-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetUtilityPole-response
    (cl:cons ':objects (objects msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetUtilityPole)))
  'GetUtilityPole-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetUtilityPole)))
  'GetUtilityPole-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetUtilityPole)))
  "Returns string type for a service object of type '<GetUtilityPole>"
  "vector_map_server/GetUtilityPole")