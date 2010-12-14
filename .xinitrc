#!/usr/bin/env bash

# take into account local resources
xrdb -merge $HOME/.Xdefaults &

# urxvt daemon
urxvtd -q -o -f

# toogle keyboard layout with Shift-Alt
setxkbmap -model evdev -layout us,gr -variant extended -option grp_led:scroll,eurosign:e,grp:alt_shift_toggle &
# kill X with Ctrl-Alt-Bksp
setxkbmap -option terminate:ctrl_alt_bksp

# set the wallpaper
display -window root data/pics/Wallpapers/arch/blue-1920x1080.png &

# hide mouse after some idle time
unclutter &

# get a terminal
$HOME/.bin/urxvt_client &

# show time
while true
do
    vol="$(amixer get PCM | tail -1 | sed -r "s:.+\[(.+%)].+:\1:g")"
    date="$(date +"%d/%m %R")"
    xsetroot -name "$vol $date"
    sleep 20s
done &

# fix misbehaving Java applications
wmname LG3D

# start the X session
#exec openbox-session
exec $HOME/.bin/startdwm
