#!/bin/bash

code=$(wmctrl -ixl | grep -i "$@" | awk '{print $1}')

if [ "$(wmctrl -ilG | grep $code | awk '{print $5}')" -eq "1280" ]; then
	wmctrl -i -r $code -b remove,fullscreen
else
	wmctrl -i -r $code -b add,fullscreen
fi;


