
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-pytest, ament-cmake-ros, builtin-interfaces, geometry-msgs, rcl-interfaces, rclpy, rmw-dds-common, ros2node, ros2param, ros2pkg, ros2service, ros2topic, rosapi-msgs, rosbridge-library, sensor-msgs, shape-msgs }:
buildRosPackage {
  pname = "ros-foxy-rosapi";
  version = "1.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbridge_suite-release/archive/release/foxy/rosapi/1.1.0-1.tar.gz";
    name = "1.1.0-1.tar.gz";
    sha256 = "00a44f41504ed778d7d9bde89312e1a60741b9ba6bef4dac0d811f3dbf238aa4";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-pytest geometry-msgs rmw-dds-common sensor-msgs shape-msgs ];
  propagatedBuildInputs = [ builtin-interfaces rcl-interfaces rclpy ros2node ros2param ros2pkg ros2service ros2topic rosapi-msgs rosbridge-library ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''Provides service calls for getting ros meta-information, like list of
    topics, services, params, etc.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}