#!/usr/bin/env bash

xrandr --output DVI-I-1 --primary --auto --right-of DVI-I-2 --auto

# begin loading cursor
xsetroot -cursor_name watch
command -v warpcursor && warpcursor 1

xset +fp /usr/share/fonts/local
xset fp rehash

xrdb -merge "$HOME/.Xresources"

setxkbmap -model evdev -layout us,gr -variant extended \
          -option grp_led:scroll,grp:shifts_toggle,eurosign:e,terminate:ctrl_alt_bksp
xinput --set-button-map "Logitech USB Optical Mouse" 1 2 3 4 5 6 7 2 9
xset r rate 250 50

[ -e "$HOME/.wallpaper" ] && bgs "$HOME/.wallpaper" || xsetroot -solid black

# end of loading - reset cursor
xsetroot -cursor_name left_ptr

exec "$HOME/bin/wmrun.sh"
