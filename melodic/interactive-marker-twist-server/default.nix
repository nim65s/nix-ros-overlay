
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, roslint, catkin, roscpp, interactive-markers, roslaunch, visualization-msgs }:
buildRosPackage {
  pname = "ros-melodic-interactive-marker-twist-server";
  version = "1.2.0";

  src = fetchurl {
    url = https://github.com/ros-gbp/interactive_marker_twist_server-release/archive/release/melodic/interactive_marker_twist_server/1.2.0-0.tar.gz;
    sha256 = "8597a128559ea347e15b06e235bb1124605e0060f42b3ceebe52769a75563946";
  };

  buildInputs = [ visualization-msgs interactive-markers roscpp ];
  checkInputs = [ roslaunch roslint ];
  propagatedBuildInputs = [ visualization-msgs interactive-markers roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Interactive control for generic Twist-based robots using interactive markers'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}