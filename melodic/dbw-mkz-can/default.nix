
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, can-msgs, catkin, dataspeed-can-msg-filters, dataspeed-can-usb, dataspeed-ulc-can, dbw-mkz-description, dbw-mkz-msgs, geometry-msgs, nodelet, roscpp, roslaunch, rospy, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-dbw-mkz-can";
  version = "1.2.3-r1";

  src = fetchurl {
    url = "https://github.com/DataspeedInc-release/dbw_mkz_ros-release/archive/release/melodic/dbw_mkz_can/1.2.3-1.tar.gz";
    name = "1.2.3-1.tar.gz";
    sha256 = "c9bfcc4af61c81906db7436009f9620e4db8e92397e964c85f99cfd00519ec24";
  };

  buildType = "catkin";
  buildInputs = [ dataspeed-can-msg-filters ];
  checkInputs = [ roslaunch ];
  propagatedBuildInputs = [ can-msgs dataspeed-can-usb dataspeed-ulc-can dbw-mkz-description dbw-mkz-msgs geometry-msgs nodelet roscpp roslaunch rospy sensor-msgs std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Drive-by-wire interface to the Dataspeed Inc. Lincoln MKZ DBW kit'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
