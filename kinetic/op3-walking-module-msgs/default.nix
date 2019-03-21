
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-msgs, message-generation, catkin, message-runtime }:
buildRosPackage {
  pname = "ros-kinetic-op3-walking-module-msgs";
  version = "0.1.1";

  src = fetchurl {
    url = https://github.com/ROBOTIS-GIT-release/ROBOTIS-OP3-msgs-release/archive/release/kinetic/op3_walking_module_msgs/0.1.1-0.tar.gz;
    sha256 = "5beea7df47ba2f5cc36e80ac7d559746ce10702382c8131bf13f2a07c692738f";
  };

  propagatedBuildInputs = [ std-msgs message-runtime ];
  nativeBuildInputs = [ std-msgs catkin message-generation ];

  meta = {
    description = ''This package includes ROS messages and services for the ROBOTIS OP3 packages'';
    #license = lib.licenses.Apache 2.0;
  };
}