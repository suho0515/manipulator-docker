# syntax=docker/dockerfile:1
FROM osrf/ros:melodic-desktop-full

RUN /bin/bash -c "apt-get update &&\
    apt-get upgrade -y&&\
    apt-get install nano &&\
    apt-get install ros-melodic-rqt-joint-trajectory-controller &&\
    source /opt/ros/melodic/setup.bash &&\
    mkdir -p ~/catkin_ws/src && cd ~/catkin_ws &&\
    git clone -b boost https://github.com/UniversalRobots/Universal_Robots_Client_Library.git src/Universal_Robots_Client_Library &&\
    git clone https://github.com/UniversalRobots/Universal_Robots_ROS_Driver.git src/Universal_Robots_ROS_Driver &&\
    git clone -b calibration_devel https://github.com/suho0515/universal_robot.git src/fmauch_universal_robot &&\
    sudo apt update -qq &&\
    rosdep update &&\
    rosdep install --from-paths src --ignore-src -y &&\
    cd ~/catkin_ws &&\
    catkin_make_isolated &&\
    source devel_isolated/setup.bash &&\
    apt remove ros-melodic-ur-client-library -y"
    
