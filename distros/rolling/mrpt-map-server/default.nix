
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, mp2p-icp, mrpt-libmaps, mrpt-libros-bridge, mrpt-msgs, mrpt-nav-interfaces, rclcpp-components }:
buildRosPackage {
  pname = "ros-rolling-mrpt-map-server";
  version = "2.1.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt_navigation-release/archive/release/rolling/mrpt_map_server/2.1.1-1.tar.gz";
    name = "2.1.1-1.tar.gz";
    sha256 = "68c15db4ebca48eda870d9dada35f53c5df3cad422477393661ad77f876836e8";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ ament-lint-auto ament-lint-common mp2p-icp mrpt-libmaps mrpt-libros-bridge mrpt-msgs mrpt-nav-interfaces rclcpp-components ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "This package provides a ROS 2 node that publishes a static map for other nodes to use it. Unlike classic ROS 1 ``map_server``, this node can publish a range of different metric maps, not only occupancy grids.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}