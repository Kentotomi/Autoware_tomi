# -*- coding: utf-8 -*-
from __future__ import print_function

import os
import stat
import sys

# find the import for catkin's python package - either from source space or from an installed underlay
if os.path.exists(os.path.join('/opt/ros/melodic/share/catkin/cmake', 'catkinConfig.cmake.in')):
    sys.path.insert(0, os.path.join('/opt/ros/melodic/share/catkin/cmake', '..', 'python'))
try:
    from catkin.environment_cache import generate_environment_script
except ImportError:
    # search for catkin package in all workspaces and prepend to path
    for workspace in '/home/autoware/Autoware/install/op_ros_helpers;/home/autoware/Autoware/install/op_simu;/home/autoware/Autoware/install/op_planner;/home/autoware/Autoware/install/op_utility;/home/autoware/Autoware/install/map_file;/home/autoware/Autoware/install/vector_map_server;/home/autoware/Autoware/install/libwaypoint_follower;/home/autoware/Autoware/install/lanelet2_extension;/home/autoware/Autoware/install/vector_map;/home/autoware/Autoware/install/amathutils_lib;/home/autoware/Autoware/install/vector_map_msgs;/home/autoware/Autoware/install/autoware_msgs;/home/autoware/Autoware/install/autoware_lanelet2_msgs;/home/autoware/Autoware/install/autoware_can_msgs;/home/autoware/Autoware/install/autoware_build_flags;/opt/ros/melodic'.split(';'):
        python_path = os.path.join(workspace, 'lib/python2.7/dist-packages')
        if os.path.isdir(os.path.join(python_path, 'catkin')):
            sys.path.insert(0, python_path)
            break
    from catkin.environment_cache import generate_environment_script

code = generate_environment_script('/home/autoware/Autoware/build/op_global_planner/devel/env.sh')

output_filename = '/home/autoware/Autoware/build/op_global_planner/catkin_generated/setup_cached.sh'
with open(output_filename, 'w') as f:
    # print('Generate script for cached setup "%s"' % output_filename)
    f.write('\n'.join(code))

mode = os.stat(output_filename).st_mode
os.chmod(output_filename, mode | stat.S_IXUSR)
