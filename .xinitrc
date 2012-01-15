#!/usr/bin/env bash

xrdb -merge "${HOME}/.Xdefaults" &
setxkbmap -model evdev -layout us,gr -variant extended \
    -option grp_led:scroll,grp:shifts_toggle,eurosign:e,terminate:ctrl_alt_bksp &
xsetroot -cursor_name left_ptr &
display -window root "${HOME}/.wallpaper.png" &
dropbox start &

exec "${HOME}/.bin/wmrun"

