
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, libyamlcpp, catkin, cost-map-core, opencv3 }:
buildRosPackage {
  pname = "ros-kinetic-cost-map-cv";
  version = "0.3.3";

  src = fetchurl {
    url = https://github.com/stonier/cost_map-release/archive/release/kinetic/cost_map_cv/0.3.3-0.tar.gz;
    sha256 = "4cf2d6cb2dec4df41e39e4b8395f0ae3d87abd10703941b5a767de07c7143b4e";
  };

  propagatedBuildInputs = [ libyamlcpp cost-map-core opencv3 boost ];
  nativeBuildInputs = [ boost libyamlcpp catkin cost-map-core opencv3 ];

  meta = {
    description = ''Conversions between cost_maps and opencv images.'';
    #license = lib.licenses.BSD;
  };
}