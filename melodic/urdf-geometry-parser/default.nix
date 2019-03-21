
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, tf2, catkin, urdf, roscpp }:
buildRosPackage {
  pname = "ros-melodic-urdf-geometry-parser";
  version = "0.0.3";

  src = fetchurl {
    url = https://github.com/ros-gbp/urdf_geometry_parser-release/archive/release/melodic/urdf_geometry_parser/0.0.3-0.tar.gz;
    sha256 = "e9abdad19d455ac3e82dffae119a7e212d53874d4587df5cb5664ac397b86a3f";
  };

  propagatedBuildInputs = [ tf2 roscpp urdf ];
  nativeBuildInputs = [ tf2 catkin roscpp urdf ];

  meta = {
    description = ''Extract geometry value of a vehicle from urdf'';
    #license = lib.licenses.BSD;
  };
}