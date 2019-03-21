
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, swri-math-util, catkin, marti-nav-msgs, marti-common-msgs, visualization-msgs, swri-geometry-util, roscpp, swri-transform-util }:
buildRosPackage {
  pname = "ros-kinetic-swri-route-util";
  version = "2.8.0";

  src = fetchurl {
    url = https://github.com/swri-robotics-gbp/marti_common-release/archive/release/kinetic/swri_route_util/2.8.0-0.tar.gz;
    sha256 = "e644f37d9a45f8bdd6c166995221d816971c19ff4d4d43880cd2ddfba8949474";
  };

  propagatedBuildInputs = [ swri-math-util marti-common-msgs visualization-msgs swri-geometry-util marti-nav-msgs roscpp swri-transform-util ];
  nativeBuildInputs = [ swri-math-util catkin marti-common-msgs visualization-msgs swri-geometry-util marti-nav-msgs roscpp swri-transform-util ];

  meta = {
    description = ''This library provides functionality to simplify working with the
    navigation messages defined in marti_nav_msgs.'';
    #license = lib.licenses.BSD;
  };
}