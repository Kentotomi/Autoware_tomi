execute_process(COMMAND "/home/autoware/Autoware/build/lgsvl_simulator_bridge/catkin_generated/python_distutils_install.sh" RESULT_VARIABLE res)

if(NOT res EQUAL 0)
  message(FATAL_ERROR "execute_process(/home/autoware/Autoware/build/lgsvl_simulator_bridge/catkin_generated/python_distutils_install.sh) returned error code ")
endif()
