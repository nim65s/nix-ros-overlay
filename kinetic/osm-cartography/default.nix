
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, dynamic-reconfigure, catkin, rospy, geodesy, geographic-msgs, rviz, visualization-msgs, route-network, std-msgs, roslaunch, tf, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-osm-cartography";
  version = "0.2.4";

  src = fetchurl {
    url = https://github.com/ros-geographic-info/open_street_map-release/archive/release/kinetic/osm_cartography/0.2.4-0.tar.gz;
    sha256 = "b7b44c6d2025f65348f479c1c748e9dc56d9bb6fbda5c6f37fac01de6c428f40";
  };

  checkInputs = [ roslaunch ];
  propagatedBuildInputs = [ tf rospy geodesy geographic-msgs rviz route-network dynamic-reconfigure std-msgs visualization-msgs geometry-msgs ];
  nativeBuildInputs = [ catkin rospy geodesy geographic-msgs visualization-msgs dynamic-reconfigure std-msgs tf geometry-msgs ];

  meta = {
    description = ''Geographic mapping using Open Street Map data.'';
    #license = lib.licenses.BSD;
  };
}