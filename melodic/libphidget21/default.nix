
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, libusb }:
buildRosPackage {
  pname = "ros-melodic-libphidget21";
  version = "0.7.7";

  src = fetchurl {
    url = https://github.com/ros-drivers-gbp/phidgets_drivers-release/archive/release/melodic/libphidget21/0.7.7-0.tar.gz;
    sha256 = "69660b7d771da1f35e899d0a658ba8d32e940015d336c37a176d7a21dc715aed";
  };

  propagatedBuildInputs = [ libusb ];
  nativeBuildInputs = [ catkin libusb ];

  meta = {
    description = ''This package wraps the libphidget21 to use it as a ROS dependency'';
    #license = lib.licenses.LGPL;
  };
}