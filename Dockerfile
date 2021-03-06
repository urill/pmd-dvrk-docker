FROM osrf/ros:kinetic-desktop-full-xenial

# install ros packages
RUN apt-get update && apt-get install -y software-properties-common python-software-properties
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
RUN add-apt-repository ppa:jonathonf/python-3.6
RUN apt-get update && apt-get install -y \
    libxml2-dev libraw1394-dev libncurses5-dev qtcreator swig libopenigtlink-dev flite cmake-curses-gui cmake-qt-gui libopencv-dev git subversion gfortran libcppunit-dev fluid qt5-default libqt5xmlpatterns5-dev python-catkin-tools python3.6
