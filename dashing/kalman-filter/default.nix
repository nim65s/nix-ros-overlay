
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, autoware-auto-cmake, eigen, motion-model, osrf-testing-tools-cpp }:
buildRosPackage {
  pname = "ros-dashing-kalman-filter";
  version = "0.0.2-r1";

  src = fetchurl {
    url = "https://gitlab.com/AutowareAuto/AutowareAuto-release/repository/archive.tar.gz?ref=release/dashing/kalman_filter/0.0.2-1";
    name = "archive.tar.gz";
    sha256 = "1266802a96c358c09b6db093f566f8b4a905efb594af67201b833b176ddcf6d1";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common osrf-testing-tools-cpp ];
  propagatedBuildInputs = [ eigen motion-model ];
  nativeBuildInputs = [ ament-cmake autoware-auto-cmake ];

  meta = {
    description = ''an implementation of square root covariance filtering (carlson-schmidt) for probabilistic state estimation'';
    license = with lib.licenses; [ asl20 ];
  };
}
