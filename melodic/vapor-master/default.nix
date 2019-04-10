
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rospack, nodejs, nodePackages, catkin }:
buildRosPackage {
  pname = "ros-melodic-vapor-master";
  version = "0.3.0";

  src = fetchurl {
    url = https://github.com/roshub/vapor_master-release/archive/release/melodic/vapor_master/0.3.0-0.tar.gz;
    sha256 = "c6fc8a631a9237b71a58f298e1394f498f3374ba2698c365f0aae44e5a75ca32";
  };

  propagatedBuildInputs = [ rospack nodejs ];
  nativeBuildInputs = [ nodePackages.npm nodejs catkin ];

  meta = {
    description = ''high availability ros master'';
    #license = lib.licenses.Apache-2.0;
  };
}