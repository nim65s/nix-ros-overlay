
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, calibration-estimation, calibration-launch, catkin, kdl-parser, openni2-launch, orocos-kdl }:
buildRosPackage {
  pname = "ros-kinetic-hironx-calibration";
  version = "2.1.1";

  src = fetchurl {
    url = "https://github.com/tork-a/rtmros_hironx-release/archive/release/kinetic/hironx_calibration/2.1.1-0.tar.gz";
    name = "2.1.1-0.tar.gz";
    sha256 = "ae3d2d0c587722f6a70f855994e01174e539929a9520480c936e6fd0c413d1fe";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ calibration-estimation calibration-launch kdl-parser openni2-launch orocos-kdl ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Launch and configuration files for calibrating hironx using the generic <a href="http://wiki.ros.org/calibration_setup_helper">calibration_setup_helper</a> package.

   THIS FILE IS AUTOMATICALLY GENERATED BY:<br/>
   <code>
   rosrun calibration_setup_helper calibration_setup_helper.py `rospack find hironx_moveit_config`/HiroNX.urdf --base-link CHEST_JOINT0_Link --arm-tip-link RARM_JOINT5_Link --head-tip-link HEAD_JOINT1_Link --arm-controller=rarm_controller/command --head-controller=head_controller/command --head-camera-frame camera_rgb_optical_frame --head-camera-joint head_to_kinect_joint
   </code>'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
