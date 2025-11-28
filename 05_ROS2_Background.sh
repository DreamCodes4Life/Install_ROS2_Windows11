# Check environment variables
printenv | grep -i ROS

# If you have ONLY one ROS 2 system (WSL2 + Isaac Sim)
ROS_DOMAIN_ID=0
export ROS_DOMAIN_ID
echo "export ROS_DOMAIN_ID" >> ~/.bashrc

# doc
https://docs.ros.org/en/jazzy/Tutorials/Beginner-CLI-Tools/Configuring-ROS2-Environment.html#id6
