// Generated by gencpp from file vector_map_server/GetRoadEdge.msg
// DO NOT EDIT!


#ifndef VECTOR_MAP_SERVER_MESSAGE_GETROADEDGE_H
#define VECTOR_MAP_SERVER_MESSAGE_GETROADEDGE_H

#include <ros/service_traits.h>


#include <vector_map_server/GetRoadEdgeRequest.h>
#include <vector_map_server/GetRoadEdgeResponse.h>


namespace vector_map_server
{

struct GetRoadEdge
{

typedef GetRoadEdgeRequest Request;
typedef GetRoadEdgeResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct GetRoadEdge
} // namespace vector_map_server


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::vector_map_server::GetRoadEdge > {
  static const char* value()
  {
    return "043091db854fb777cc2e28c3df60c47d";
  }

  static const char* value(const ::vector_map_server::GetRoadEdge&) { return value(); }
};

template<>
struct DataType< ::vector_map_server::GetRoadEdge > {
  static const char* value()
  {
    return "vector_map_server/GetRoadEdge";
  }

  static const char* value(const ::vector_map_server::GetRoadEdge&) { return value(); }
};


// service_traits::MD5Sum< ::vector_map_server::GetRoadEdgeRequest> should match
// service_traits::MD5Sum< ::vector_map_server::GetRoadEdge >
template<>
struct MD5Sum< ::vector_map_server::GetRoadEdgeRequest>
{
  static const char* value()
  {
    return MD5Sum< ::vector_map_server::GetRoadEdge >::value();
  }
  static const char* value(const ::vector_map_server::GetRoadEdgeRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::vector_map_server::GetRoadEdgeRequest> should match
// service_traits::DataType< ::vector_map_server::GetRoadEdge >
template<>
struct DataType< ::vector_map_server::GetRoadEdgeRequest>
{
  static const char* value()
  {
    return DataType< ::vector_map_server::GetRoadEdge >::value();
  }
  static const char* value(const ::vector_map_server::GetRoadEdgeRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::vector_map_server::GetRoadEdgeResponse> should match
// service_traits::MD5Sum< ::vector_map_server::GetRoadEdge >
template<>
struct MD5Sum< ::vector_map_server::GetRoadEdgeResponse>
{
  static const char* value()
  {
    return MD5Sum< ::vector_map_server::GetRoadEdge >::value();
  }
  static const char* value(const ::vector_map_server::GetRoadEdgeResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::vector_map_server::GetRoadEdgeResponse> should match
// service_traits::DataType< ::vector_map_server::GetRoadEdge >
template<>
struct DataType< ::vector_map_server::GetRoadEdgeResponse>
{
  static const char* value()
  {
    return DataType< ::vector_map_server::GetRoadEdge >::value();
  }
  static const char* value(const ::vector_map_server::GetRoadEdgeResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // VECTOR_MAP_SERVER_MESSAGE_GETROADEDGE_H
