
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, joy, teleop-twist-joy, map-server, catkin, gmapping, move-base, urg-node, rospy, amcl, nav-msgs, teb-local-planner, move-base-msgs }:
buildRosPackage {
  pname = "ros-melodic-seed-r7-navigation";
  version = "0.3.3-r1";

  src = fetchurl {
    url = "https://github.com/seed-solutions/seed_r7_ros_pkg-release/archive/release/melodic/seed_r7_navigation/0.3.3-1.tar.gz";
    name = "0.3.3-1.tar.gz";
    sha256 = "4cd0a99daf7b2b78efbeffa4e986d97c6880666eafd3f2d38daf38ce56604e44";
  };

  buildType = "catkin";
  buildInputs = [ joy teleop-twist-joy map-server gmapping move-base urg-node rospy amcl nav-msgs teb-local-planner move-base-msgs ];
  propagatedBuildInputs = [ joy teb-local-planner teleop-twist-joy map-server gmapping move-base rospy amcl nav-msgs urg-node move-base-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The seed_r7_navigation package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}