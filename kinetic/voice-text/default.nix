
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dynamic-reconfigure, message-generation, message-runtime, nkf, roscpp, sound-play }:
buildRosPackage {
  pname = "ros-kinetic-voice-text";
  version = "2.1.14-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_3rdparty-release/archive/release/kinetic/voice_text/2.1.14-1.tar.gz";
    name = "2.1.14-1.tar.gz";
    sha256 = "193cd3ab182bf5a8d4edfbc077374f2f6dc32e3e72f36f9d7f71d296525b35cd";
  };

  buildType = "catkin";
  buildInputs = [ message-generation roscpp ];
  propagatedBuildInputs = [ dynamic-reconfigure message-runtime nkf sound-play ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''voice_text (www.voicetext.jp)'';
    license = with lib.licenses; [ "HOYA License" ];
  };
}
