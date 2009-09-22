#!/bin/bash

# load the default autostart.sh
. $GLOBALAUTOSTART &

# set wallpaper 
sh $HOME/.fehbg &

# start compositing manager
xcompmgr -CfF -o.55 -D4 -m.86 &

# toogle keyboard layout with S-A
setxkbmap -model evdev -layout us,gr -variant ,extended -option grp_led:scroll,eurosign:e,grp:alt_shift_toggle &
#,lv3:rwin_switch,altwin:left_meta_win & 

# tint panel
tint2 &

# mount or umount devices
halevt &

# start urxvt daemon
urxvtd -q -f -o &

# enable numlock
numlockx on &

# hide mouse after some idle time
unclutter &

# tiling features
whaw &

# start parcellite clipboard
parcellite &

# start pidgin msn messenger
pidgin &

# start sonata in systray
sonata --hidden &

# lock screen with image
#xautolock -time 5 -locker "feh -FZxN --hide-pointer /home/koukos/Downloads/Themes_Stuff/Walls/the_screamy_wall/screamy1280x1024.jpg" &

# start conky 
conky -c ~/.scripts/conky/album.conkyrc &

