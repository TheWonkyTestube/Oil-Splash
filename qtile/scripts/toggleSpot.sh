#!/bin/sh
open=$(~/eww/target/release/eww windows | grep music)

if [ "$open" != "music-bar" ];
then
  ~/eww/target/release/eww close music-bar
fi

if [ "$open" == "music-bar" ];
then
  ~/eww/target/release/eww open music-bar
fi
