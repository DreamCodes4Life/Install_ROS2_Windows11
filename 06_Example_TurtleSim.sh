# doc
https://docs.ros.org/en/jazzy/Tutorials/Beginner-CLI-Tools/Introducing-Turtlesim/Introducing-Turtlesim.html

# Install turtlesim
sudo apt update
sudo apt install ros-jazzy-turtlesim

# check if the package is installed
ros2 pkg executables turtlesim

# start turtle sim
ros2 run turtlesim turtlesim_node

# open a new terminal
ros2 run turtlesim turtle_teleop_key

# You can see the nodes, and their associated topics, services, and actions, using the list subcommands
# open a new terminal
ros2 node list
ros2 topic list
ros2 service list
ros2 action list

# Install rqt
sudo apt update
sudo apt install '~nros-jazzy-rqt*'

# run it
rqt

select Plugins > Services > Service Caller
Click on the Service dropdown list to see turtlesim’s services, and select the /spawn service.
Give the new turtle a unique name, like 'turtle2' by double-clicking between the empty single quotes in the Expression column
To spawn turtle2, you then need to call the service by clicking the Call 

# If you refresh the service list in rqt, you will also see that now there are services related to the new turtle, /turtle2/..., in addition to /turtle1/....
ros2 service list

# You’ve probably also noticed that there’s no way to move turtle2. That’s because there is no teleop node for turtle2.
# open a new terminal
ros2 run turtlesim turtle_teleop_key --ros-args --remap turtle1/cmd_vel:=turtle2/cmd_vel

# now selecting each terminal you can move one turtle or the other

# To stop the simulation, you can enter Ctrl + C in the turtlesim_node terminal, and q in the turtle_teleop_key terminals






