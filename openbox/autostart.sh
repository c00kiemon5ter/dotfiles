#!/bin/bash
# JesusSuperstar (L)(O)(L) (mrJesusSuperstar@gmail.com)
#

## load the default autostart.sh
. $GLOBALAUTOSTART &

## merge xdefault settings to X db
#xrdb -merge $HOME/.Xdefaults &

## set wallpaper 
sh $HOME/.fehbg &

## tint panel
tint2 &

## toogle keyboard layout with S-A
setxkbmap -model evdev -layout us,gr -variant extended -option grp_led:scroll,eurosign:e,grp:alt_shift_toggle &
#,lv3:rwin_switch,altwin:left_meta_win & 

## start urxvt daemon
urxvtd -q -f -o &

## enable numlock
numlockx on &

## start parcellite clipboard
parcellite &

## start msn messenger
#emesene -i &
pidgin &

## start sonata in systray
#sonata -t &

## start conky 
conky -c ~/.conky/album.conkyrc &

## mount or umount devices
halevt &

## hide mouse after some idle time
unclutter &

## tiling features
#whaw &

## tint2 is above
#wmctrl -ir $(wmctrl -li | grep tint2 | awk '{print $1}') -b add,above

## start compositing manager
#xcompmgr-dana -cCfF -o.55 -D4 -m.88 &
xcompmgr -cCfF -o.55 -D4 -r4.2 -t-5 -l-5 &

## lock screen with image
#xautolock -time 5 -locker "feh -FZxN --hide-pointer /home/koukos/Downloads/Themes_Stuff/Walls/the_screamy_wall/screamy1280x1024.jpg" &

## top parallel 
#~/.bin/urxvt_client.sh -geometry 78x24+7+16 & #80x24+33+16 &
#~/.bin/urxvt_client.sh -geometry 78x24-7+16 & #69x24-32+16 &
~/.bin/urxvt_client.sh -geometry 80x24+54+52 &

