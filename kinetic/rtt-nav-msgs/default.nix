
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, nav-msgs, rtt-actionlib-msgs, rtt-geometry-msgs, rtt-roscomm, rtt-std-msgs }:
buildRosPackage {
  pname = "ros-kinetic-rtt-nav-msgs";
  version = "2.9.2-r1";

  src = fetchurl {
    url = "https://github.com/orocos-gbp/rtt_ros_integration-release/archive/release/kinetic/rtt_nav_msgs/2.9.2-1.tar.gz";
    name = "2.9.2-1.tar.gz";
    sha256 = "6d5f64d6137aca76f461b432536c4c6980b42f2e39b62f1ceb2d1366e579a414";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ nav-msgs rtt-actionlib-msgs rtt-geometry-msgs rtt-roscomm rtt-std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Provides an rtt typekit for ROS nav_msgs messages.

    It allows you to use ROS messages transparently in
    RTT components and applications.

    This package was automatically generated by the
    create_rtt_msgs generator and should not be manually
    modified.

    See the http://ros.org/wiki/nav_msgs documentation
    for the documentation of the ROS messages in this
    typekit.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
