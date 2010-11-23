#!/usr/bin/env bash

# urxvt daemon
urxvtd -q -o -f

# toogle keyboard layout with S-A
setxkbmap -model evdev -layout us,gr -variant extended -option grp_led:scroll,eurosign:e,grp:alt_shift_toggle &

# set the wallpaper
display -window root data/pics/Wallpapers/arch/blue-1920x1080.png &

# hide mouse after some idle time
unclutter &

# have a termnal ready
${HOME}/.bin/urxvt_client.sh -geometry 98x28+54+52 & #90x24+54+52

# nowplaying conky
sleep 2 && conky -c ${HOME}/.conky/nowplaying.conkyrc &

# start the X session
exec openbox-session

