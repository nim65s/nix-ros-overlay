
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, controller-manager, std-srvs, control-msgs, realtime-tools, catkin, rosgraph-msgs, rostest, nav-msgs, urdf, controller-interface, dynamic-reconfigure, tf, xacro }:
buildRosPackage {
  pname = "ros-melodic-diff-drive-controller";
  version = "0.15.0";

  src = fetchurl {
    url = https://github.com/ros-gbp/ros_controllers-release/archive/release/melodic/diff_drive_controller/0.15.0-0.tar.gz;
    sha256 = "bc06277c71ef12ba835e78b38e48a3f39886aaf0a03d779c99689f1ebea02ff0";
  };

  checkInputs = [ controller-manager rosgraph-msgs rostest std-srvs xacro ];
  propagatedBuildInputs = [ nav-msgs urdf controller-interface control-msgs dynamic-reconfigure realtime-tools tf ];
  nativeBuildInputs = [ nav-msgs urdf controller-interface control-msgs dynamic-reconfigure realtime-tools catkin tf ];

  meta = {
    description = ''Controller for a differential drive mobile base.'';
    #license = lib.licenses.BSD;
  };
}