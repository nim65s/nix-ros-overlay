
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, ament-lint-common, geometry-msgs, joy-linux, joy-teleop, launch-pal, play-motion2, teleop-tools-msgs, tiago-controller-configuration, tiago-description, twist-mux, twist-mux-msgs }:
buildRosPackage {
  pname = "ros-humble-tiago-bringup";
  version = "4.7.1-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/tiago_robot-release/archive/release/humble/tiago_bringup/4.7.1-1.tar.gz";
    name = "4.7.1-1.tar.gz";
    sha256 = "628d242443b631c4a8761fa731968bd447070fa673073451a49edc28529866c6";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ geometry-msgs joy-linux joy-teleop launch-pal play-motion2 teleop-tools-msgs tiago-controller-configuration tiago-description twist-mux twist-mux-msgs ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = "Launch files to upload the robot description and start the controllers";
    license = with lib.licenses; [ asl20 ];
  };
}
