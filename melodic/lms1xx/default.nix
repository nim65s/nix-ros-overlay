
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, roslint, sensor-msgs, catkin, rosconsole-bridge, roscpp-serialization, roslaunch, roscpp, rosunit }:
buildRosPackage {
  pname = "ros-melodic-lms1xx";
  version = "0.2.0-r1";

  src = fetchurl {
    url = https://github.com/clearpath-gbp/lms1xx-release/archive/release/melodic/lms1xx/0.2.0-1.tar.gz;
    sha256 = "9a9ff8a7991afb1c4a8d05f8b4518fd5a944da3dba605db67a4f55ea6c049f76";
  };

  buildInputs = [ sensor-msgs roscpp rosconsole-bridge roscpp-serialization ];
  checkInputs = [ roslaunch rosunit roslint ];
  propagatedBuildInputs = [ sensor-msgs roscpp rosconsole-bridge roscpp-serialization ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The lms1xx package contains a basic ROS driver for the SICK LMS1xx line of LIDARs.'';
    license = with lib.licenses; [ lgpl2 ];
  };
}