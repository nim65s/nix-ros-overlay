
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosconsole, rosbash, boost, libyamlcpp, sensor-msgs, catkin, pkg-config, roscpp-serialization, roscpp, rosunit }:
buildRosPackage {
  pname = "ros-melodic-camera-calibration-parsers";
  version = "1.11.13";

  src = fetchurl {
    url = https://github.com/ros-gbp/image_common-release/archive/release/melodic/camera_calibration_parsers/1.11.13-0.tar.gz;
    sha256 = "dd350061b03da5dba0315515f603daa31204e71c43389cf9e57bf09c06d8d3ef";
  };

  checkInputs = [ rosunit rosbash ];
  propagatedBuildInputs = [ boost roscpp-serialization libyamlcpp sensor-msgs roscpp ];
  nativeBuildInputs = [ catkin rosconsole boost roscpp-serialization libyamlcpp sensor-msgs roscpp pkg-config ];

  meta = {
    description = ''camera_calibration_parsers contains routines for reading and writing camera calibration parameters.'';
    #license = lib.licenses.BSD;
  };
}