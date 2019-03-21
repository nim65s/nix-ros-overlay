
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-srvs, pluginlib, catkin, roscpp, diagnostic-updater, message-generation, message-runtime, socketcan-interface, std-msgs, roslib, canopen-master }:
buildRosPackage {
  pname = "ros-kinetic-canopen-chain-node";
  version = "0.7.10";

  src = fetchurl {
    url = https://github.com/ros-industrial-release/ros_canopen-release/archive/release/kinetic/canopen_chain_node/0.7.10-0.tar.gz;
    sha256 = "1b9c0d3ac2ab27ed74c5b45c85d414af44627eff74e4504bfdf4ab2e5f426bb3";
  };

  propagatedBuildInputs = [ std-srvs pluginlib roscpp diagnostic-updater message-runtime socketcan-interface std-msgs roslib canopen-master ];
  nativeBuildInputs = [ std-srvs pluginlib catkin roscpp diagnostic-updater message-generation socketcan-interface std-msgs roslib canopen-master ];

  meta = {
    description = ''Base implementation for CANopen chains node with support for management services and diagnostics'';
    #license = lib.licenses.LGPLv3;
  };
}