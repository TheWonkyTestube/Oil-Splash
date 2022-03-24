#!/bin/sh
open=$(~/eww/target/release/eww windows | grep barMiddle)

if [ $open != "barMiddle" ];
then
  ~/eww/target/release/eww close barLeft
  ~/eww/target/release/eww close barRight
  ~/eww/target/release/eww close barMiddle
fi

if [ $open == "barMiddle" ];
then
  ~/eww/target/release/eww open barLeft
  ~/eww/target/release/eww open barRight
  ~/eww/target/release/eww open barMiddle
fi
