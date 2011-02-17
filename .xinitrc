#!/usr/bin/env bash

xrdb -merge $HOME/.Xdefaults &
urxvtd -q -o -f &

{   # toogle keyboard layout with Shift-Alt
    setxkbmap -model evdev -layout us,gr -variant extended -option grp_led:scroll,eurosign:e,grp:ctrl_shift_toggle;
    # kill X with Ctrl-Alt-Bksp
    setxkbmap -option terminate:ctrl_alt_bksp; } &

display -window root $HOME/.wallpaper.png &
unclutter &
clipbored &

exec $HOME/.bin/startdwm

