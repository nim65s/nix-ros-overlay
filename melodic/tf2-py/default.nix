
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, tf2, catkin, rospy }:
buildRosPackage {
  pname = "ros-melodic-tf2-py";
  version = "0.6.5";

  src = fetchurl {
    url = https://github.com/ros-gbp/geometry2-release/archive/release/melodic/tf2_py/0.6.5-0.tar.gz;
    sha256 = "24fc32a89eb1f6714d2f05c138c5d85741aabe819fc18475e63564aa0e2c388b";
  };

  propagatedBuildInputs = [ tf2 rospy ];
  nativeBuildInputs = [ tf2 catkin rospy ];

  meta = {
    description = ''The tf2_py package'';
    #license = lib.licenses.BSD;
  };
}