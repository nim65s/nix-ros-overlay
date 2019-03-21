
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, kobuki-msgs, pluginlib, catkin, roscpp, ecl-threads, std-msgs, nodelet, geometry-msgs, yocs-controllers }:
buildRosPackage {
  pname = "ros-kinetic-kobuki-safety-controller";
  version = "0.7.6";

  src = fetchurl {
    url = https://github.com/yujinrobot-release/kobuki-release/archive/release/kinetic/kobuki_safety_controller/0.7.6-0.tar.gz;
    sha256 = "8a33921af46704980110c752c39f1b9e0837907951ecd9efa229973f6d215229";
  };

  propagatedBuildInputs = [ roscpp kobuki-msgs pluginlib geometry-msgs std-msgs nodelet yocs-controllers ecl-threads ];
  nativeBuildInputs = [ kobuki-msgs pluginlib catkin ecl-threads nodelet std-msgs roscpp geometry-msgs yocs-controllers ];

  meta = {
    description = ''A controller ensuring the safe operation of Kobuki.

    The SafetyController keeps track of bumper, cliff and wheel drop events. In case of the first two,
    Kobuki is commanded to move back. In the latter case, Kobuki is stopped.
    
    This controller can be enabled/disabled.
    The safety states (bumper pressed etc.) can be reset. WARNING: Dangerous!'';
    #license = lib.licenses.BSD;
  };
}