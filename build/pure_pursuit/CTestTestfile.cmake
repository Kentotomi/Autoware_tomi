# CMake generated Testfile for 
# Source directory: /home/autoware/Autoware/src/autoware/core_planning/pure_pursuit
# Build directory: /home/autoware/Autoware/build/pure_pursuit
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(_ctest_pure_pursuit_rostest_test_test_pure_pursuit.test "/home/autoware/Autoware/build/pure_pursuit/catkin_generated/env_cached.sh" "/usr/bin/python2" "/opt/ros/melodic/share/catkin/cmake/test/run_tests.py" "/home/autoware/Autoware/build/pure_pursuit/test_results/pure_pursuit/rostest-test_test_pure_pursuit.xml" "--return-code" "/usr/bin/python2 /opt/ros/melodic/share/rostest/cmake/../../../bin/rostest --pkgdir=/home/autoware/Autoware/src/autoware/core_planning/pure_pursuit --package=pure_pursuit --results-filename test_test_pure_pursuit.xml --results-base-dir \"/home/autoware/Autoware/build/pure_pursuit/test_results\" /home/autoware/Autoware/src/autoware/core_planning/pure_pursuit/test/test_pure_pursuit.test ")
add_test(_ctest_pure_pursuit_roslint_package "/home/autoware/Autoware/build/pure_pursuit/catkin_generated/env_cached.sh" "/usr/bin/python2" "/opt/ros/melodic/share/catkin/cmake/test/run_tests.py" "/home/autoware/Autoware/build/pure_pursuit/test_results/pure_pursuit/roslint-pure_pursuit.xml" "--working-dir" "/home/autoware/Autoware/build/pure_pursuit" "--return-code" "/opt/ros/melodic/share/roslint/cmake/../../../lib/roslint/test_wrapper /home/autoware/Autoware/build/pure_pursuit/test_results/pure_pursuit/roslint-pure_pursuit.xml make roslint_pure_pursuit")
subdirs("gtest")
