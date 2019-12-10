
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, interactive-markers, roscpp, rviz, std-msgs, tf, visualization-msgs }:
buildRosPackage {
  pname = "ros-kinetic-cob-interactive-teleop";
  version = "0.6.15-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_command_tools-release/archive/release/kinetic/cob_interactive_teleop/0.6.15-1.tar.gz";
    name = "0.6.15-1.tar.gz";
    sha256 = "783651e0fb9f29a3e11e599d5391db4b7086d95d9a7f15d9a2709d4583d781dd";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ geometry-msgs interactive-markers roscpp rviz std-msgs tf visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''COB teleop interactive marker for RViz provided by dcgm-robotics@FIT group.'';
    license = with lib.licenses; [ asl20 ];
  };
}
