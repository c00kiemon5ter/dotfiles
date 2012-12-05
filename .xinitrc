#!/usr/bin/env bash

xrandr --output DVI-I-1 --primary --auto --right-of DVI-I-2 --auto

xsetroot -cursor_name watch
command -v warpcursor && warpcursor 1

xset +fp /usr/share/fonts/local
xset fp rehash

xrdb -merge "${HOME}/.Xresources"

setxkbmap -model evdev -layout us,gr -variant extended \
    -option grp_led:scroll,grp:shifts_toggle,eurosign:e,terminate:ctrl_alt_bksp &

xset r rate 250 50
xsetroot -solid black
xsetroot -cursor_name left_ptr

exec "${HOME}/bin/wmrun.sh"
