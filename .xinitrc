#!/usr/bin/env bash

xrdb -merge "${HOME}/.Xdefaults" &
urxvtd -q -o -f &

{   # toogle keyboard layout with Ctrl-Alt
    setxkbmap -model evdev -layout us,gr -variant extended \
        -option grp_led:scroll,eurosign:e,grp:shifts_toggle
    # kill X with Ctrl-Alt-Bksp
    setxkbmap -option terminate:ctrl_alt_bksp
} &

xsetroot -cursor_name left_ptr &
display -window root "${HOME}/.wallpaper.png" &
dropbox start &

exec "${HOME}/.bin/wmrun"

