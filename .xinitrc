#!/usr/bin/env bash

# take into account local resources
xrdb -merge $HOME/.Xdefaults &

# urxvt daemon
urxvtd -q -o -f

# toogle keyboard layout with Shift-Alt
setxkbmap -model evdev -layout us,gr -variant extended -option grp_led:scroll,eurosign:e,grp:ctrl_shift_toggle &
# kill X with Ctrl-Alt-Bksp
setxkbmap -option terminate:ctrl_alt_bksp &

# set the wallpaper
display -window root $HOME/.wallpaper.png &

# hide mouse after some idle time
unclutter &

# get a terminal
#urxvtdc &
# get a hidden floating centered terminal
urxvtdc -name togglepad -pe kuake -geometry +740+396 &

# start the X session
exec $HOME/.bin/startdwm
