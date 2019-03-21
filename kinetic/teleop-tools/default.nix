
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, key-teleop, joy-teleop, teleop-tools-msgs, catkin }:
buildRosPackage {
  pname = "ros-kinetic-teleop-tools";
  version = "0.3.0";

  src = fetchurl {
    url = https://github.com/ros-gbp/teleop_tools-release/archive/release/kinetic/teleop_tools/0.3.0-0.tar.gz;
    sha256 = "27f8c579a75432b85a5331b72f83a5ae9699bcc5bfdbcd3feedbd02be49c41d7";
  };

  propagatedBuildInputs = [ key-teleop joy-teleop teleop-tools-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A set of generic teleoperation tools for any robot.'';
    #license = lib.licenses.BSD;
  };
}