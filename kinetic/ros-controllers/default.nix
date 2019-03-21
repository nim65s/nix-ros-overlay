
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, joint-state-controller, diff-drive-controller, catkin, rqt-joint-trajectory-controller, velocity-controllers, joint-trajectory-controller, position-controllers, ackermann-steering-controller, imu-sensor-controller, effort-controllers, forward-command-controller, force-torque-sensor-controller, gripper-action-controller }:
buildRosPackage {
  pname = "ros-kinetic-ros-controllers";
  version = "0.13.5";

  src = fetchurl {
    url = https://github.com/ros-gbp/ros_controllers-release/archive/release/kinetic/ros_controllers/0.13.5-0.tar.gz;
    sha256 = "8d593d537c640465ba826bac38818ecba4e3bf064b7f89857d1642f7c6c22e9d";
  };

  propagatedBuildInputs = [ joint-state-controller diff-drive-controller rqt-joint-trajectory-controller force-torque-sensor-controller velocity-controllers joint-trajectory-controller position-controllers ackermann-steering-controller imu-sensor-controller effort-controllers forward-command-controller gripper-action-controller ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Library of ros controllers'';
    #license = lib.licenses.BSD;
  };
}