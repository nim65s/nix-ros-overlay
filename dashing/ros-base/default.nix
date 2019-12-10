
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, kdl-parser, robot-state-publisher, ros-core, tf2, tf2-eigen, tf2-geometry-msgs, tf2-kdl, tf2-ros, urdf }:
buildRosPackage {
  pname = "ros-dashing-ros-base";
  version = "0.7.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/variants-release/archive/release/dashing/ros_base/0.7.2-1.tar.gz";
    name = "0.7.2-1.tar.gz";
    sha256 = "ca4226763e8db5a53ade8eb691ba401c5695e9014b6de3f3db0d762408f0e2d4";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ kdl-parser robot-state-publisher ros-core tf2 tf2-eigen tf2-geometry-msgs tf2-kdl tf2-ros urdf ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''A package which extends 'ros_core' and includes other basic functionalities like tf2 and urdf.'';
    license = with lib.licenses; [ asl20 ];
  };
}
