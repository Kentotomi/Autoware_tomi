# CMake generated Testfile for 
# Source directory: /home/autoware/Autoware/src/autoware/core_perception/trafficlight_recognizer
# Build directory: /home/autoware/Autoware/build/trafficlight_recognizer
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(_ctest_trafficlight_recognizer_roslint_package "/home/autoware/Autoware/build/trafficlight_recognizer/catkin_generated/env_cached.sh" "/usr/bin/python2" "/opt/ros/melodic/share/catkin/cmake/test/run_tests.py" "/home/autoware/Autoware/build/trafficlight_recognizer/test_results/trafficlight_recognizer/roslint-trafficlight_recognizer.xml" "--working-dir" "/home/autoware/Autoware/build/trafficlight_recognizer" "--return-code" "/opt/ros/melodic/share/roslint/cmake/../../../lib/roslint/test_wrapper /home/autoware/Autoware/build/trafficlight_recognizer/test_results/trafficlight_recognizer/roslint-trafficlight_recognizer.xml make roslint_trafficlight_recognizer")
add_test(_ctest_trafficlight_recognizer_rostest_test_test_feat_proj_lanelet2.test "/home/autoware/Autoware/build/trafficlight_recognizer/catkin_generated/env_cached.sh" "/usr/bin/python2" "/opt/ros/melodic/share/catkin/cmake/test/run_tests.py" "/home/autoware/Autoware/build/trafficlight_recognizer/test_results/trafficlight_recognizer/rostest-test_test_feat_proj_lanelet2.xml" "--return-code" "/usr/bin/python2 /opt/ros/melodic/share/rostest/cmake/../../../bin/rostest --pkgdir=/home/autoware/Autoware/src/autoware/core_perception/trafficlight_recognizer --package=trafficlight_recognizer --results-filename test_test_feat_proj_lanelet2.xml --results-base-dir \"/home/autoware/Autoware/build/trafficlight_recognizer/test_results\" /home/autoware/Autoware/src/autoware/core_perception/trafficlight_recognizer/test/test_feat_proj_lanelet2.test ")
subdirs("gtest")
