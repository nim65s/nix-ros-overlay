
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, cob-footprint-observer, costmap-2d, dynamic-reconfigure, geometry-msgs, nav-msgs, roscpp, tf, tf2-ros, visualization-msgs }:
buildRosPackage {
  pname = "ros-melodic-cob-collision-velocity-filter";
  version = "0.8.1-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_control-release/archive/release/melodic/cob_collision_velocity_filter/0.8.1-1.tar.gz";
    name = "0.8.1-1.tar.gz";
    sha256 = "167363d3942a00dccba154510dbaf68cecd2b08f4b404490797c867ac9a0561f";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ boost cob-footprint-observer costmap-2d dynamic-reconfigure geometry-msgs nav-msgs roscpp tf tf2-ros visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The cob_collision_velocity_filter package is a package for collision avoidance using teleoperation.'';
    license = with lib.licenses; [ asl20 ];
  };
}
