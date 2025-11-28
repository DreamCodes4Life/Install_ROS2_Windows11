# In one terminal, source the setup file and then run a C++ talker
source /opt/ros/jazzy/setup.bash
ros2 run demo_nodes_cpp talker

# In another terminal source the setup file and then run a Python listener
source /opt/ros/jazzy/setup.bash
ros2 run demo_nodes_py listener
