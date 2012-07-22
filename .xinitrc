#!/usr/bin/env bash

xrandr --output DVI-I-1 --right-of DVI-I-2
xrandr --output DVI-I-1 --auto
xrandr --output DVI-I-2 --auto
xrandr --output DVI-I-1 --primary

xset +fp /usr/share/fonts/local
xset fp rehash

xrdb -merge "${HOME}/.Xresources" &

setxkbmap -model evdev -layout us,gr -variant extended \
    -option grp_led:scroll,grp:shifts_toggle,eurosign:e,terminate:ctrl_alt_bksp &

xsetroot -cursor_name left_ptr &
display -window root "${HOME}/.wallpaper.png" &

exec "${HOME}/.bin/wmrun.sh"
