
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, qt-gui-cpp, qt-gui, qt5, nodelet, roscpp }:
buildRosPackage {
  pname = "ros-melodic-rqt-gui-cpp";
  version = "0.5.0";

  src = fetchurl {
    url = https://github.com/ros-gbp/rqt-release/archive/release/melodic/rqt_gui_cpp/0.5.0-0.tar.gz;
    sha256 = "29dd122311b73050bde2957210a6523688298a3c1993833b78ef18b80a671603";
  };

  propagatedBuildInputs = [ qt-gui-cpp roscpp qt-gui nodelet ];
  nativeBuildInputs = [ qt-gui-cpp roscpp qt-gui catkin nodelet qt5.qtbase ];

  meta = {
    description = ''rqt_gui_cpp enables GUI plugins to use the C++ client library for ROS.'';
    #license = lib.licenses.BSD;
  };
}