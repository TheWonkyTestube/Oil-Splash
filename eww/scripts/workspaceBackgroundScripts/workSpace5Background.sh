#!/bin/sh
desktops=$(wmctrl -d | awk '{print $2}')
thisDesktopLong=$(echo ${desktops:8:8})
thisDesktop=$(echo ${thisDesktopLong:0:1})
if [ $thisDesktop != "-" ];
then
  echo "#010204"
fi
