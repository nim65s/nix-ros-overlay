
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, amcl, catkin, gmapping, joy, map-server, move-base, move-base-msgs, nav-msgs, rospy, teb-local-planner, teleop-twist-joy, urg-node }:
buildRosPackage {
  pname = "ros-kinetic-seed-r7-navigation";
  version = "0.3.3-r2";

  src = fetchurl {
    url = "https://github.com/seed-solutions/seed_r7_ros_pkg-release/archive/release/kinetic/seed_r7_navigation/0.3.3-2.tar.gz";
    name = "0.3.3-2.tar.gz";
    sha256 = "f83b7792381fe9b6d85f0010678ee6cc4f7709d6110e252da279853565a898b7";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ amcl gmapping joy map-server move-base move-base-msgs nav-msgs rospy teb-local-planner teleop-twist-joy urg-node ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The seed_r7_navigation package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
