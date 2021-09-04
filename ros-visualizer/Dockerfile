# syntax=docker/dockerfile:1
FROM osrf/ros:melodic-desktop-full


# to communicate with ur_dashboard_msgs from rqt, we gotta install official universal robots ros driver
RUN /bin/bash -c "apt-get update &&\
    sudo apt install ros-melodic-rqt-joint-trajectory-controller &&\
    sudo apt install ros-melodic-joint-trajectory-controller &&\
    source /opt/ros/melodic/setup.bash &&\
    mkdir -p ~/catkin_ws/src && cd ~/catkin_ws &&\
    git clone https://github.com/UniversalRobots/Universal_Robots_ROS_Driver.git src/Universal_Robots_ROS_Driver &&\
    git clone -b calibration_devel https://github.com/fmauch/universal_robot.git src/fmauch_universal_robot &&\
    sudo apt update -qq &&\
    rosdep update &&\
    rosdep install --from-paths src --ignore-src -y &&\
    cd ~/catkin_ws &&\
    catkin_make &&\
    source devel/setup.bash"
    
