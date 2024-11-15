
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, geometry-msgs, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-humble-octomap-msgs";
  version = "2.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/octomap_msgs-release/archive/release/humble/octomap_msgs/2.0.1-1.tar.gz";
    name = "2.0.1-1.tar.gz";
    sha256 = "bd42f53ebf3c3724d2823a5f41e8f758d3e0d7cac2f422099f20f5fb854c8c1e";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  propagatedBuildInputs = [ geometry-msgs rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "This package provides messages and serializations / conversion for the <a href=\"http://octomap.github.com\">OctoMap library</a>.
   This ROS2 version is based on version 0.3.3 of the ROS1 package.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
