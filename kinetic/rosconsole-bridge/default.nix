
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, console-bridge, catkin, rosconsole }:
buildRosPackage {
  pname = "ros-kinetic-rosconsole-bridge";
  version = "0.5.2";

  src = fetchurl {
    url = https://github.com/ros-gbp/rosconsole_bridge-release/archive/release/kinetic/rosconsole_bridge/0.5.2-0.tar.gz;
    sha256 = "05008f6da9a95afcf81c771a6482c3fad12eb8e8fc52abed41a7f5d752390472";
  };

  propagatedBuildInputs = [ console-bridge rosconsole ];
  nativeBuildInputs = [ catkin console-bridge rosconsole ];

  meta = {
    description = ''rosconsole_bridge is a package used in conjunction with console_bridge and rosconsole for connecting console_bridge-based logging to rosconsole-based logging.'';
    #license = lib.licenses.BSD;
  };
}