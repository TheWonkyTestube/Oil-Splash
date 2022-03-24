#!/bin/sh

cvlc SplashScreen.mkv --play-and-exit -f --no-osd &&
picom &
~/eww/target/release/eww daemon &
nitrogen --set-zoom-fill ~/Pictures/wallpaper/oil.jpg &
setxkbmap gb &
