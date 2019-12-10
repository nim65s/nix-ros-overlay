
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cob-gazebo-ros-control }:
buildRosPackage {
  pname = "ros-kinetic-cob-gazebo-plugins";
  version = "0.7.3-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_gazebo_plugins-release/archive/release/kinetic/cob_gazebo_plugins/0.7.3-1.tar.gz";
    name = "0.7.3-1.tar.gz";
    sha256 = "24aee12cecef7cd95091774b132079044d649d106e4732be9e0a0fa8fcaf4250";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ cob-gazebo-ros-control ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''cob_gazebo_plugins meta-package'';
    license = with lib.licenses; [ asl20 ];
  };
}
