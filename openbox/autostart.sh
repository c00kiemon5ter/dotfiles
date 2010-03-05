#!/bin/bash
# mrJesus (L)(O)(L) (mrJesusSuperstar@gmail.com)
#

## load the default autostart.sh
. $GLOBALAUTOSTART &

## merge xdefault settings to X db
#xrdb -merge $HOME/.Xdefaults &

## set wallpaper 
sh $HOME/.fehbg &

## tint panel
tint2 &

## start urxvt daemon
#urxvtd -q -f -o &
## have a termnal ready
~/.bin/urxvt_client.sh -geometry 80x24+54+52 &

## toogle keyboard layout with S-A
setxkbmap -model evdev -layout us,gr -variant extended -option grp_led:scroll,eurosign:e,grp:alt_shift_toggle &
#,lv3:rwin_switch,altwin:left_meta_win & 

## enable numlock
numlockx on &

## start parcellite clipboard
parcellite &

## hide mouse after some idle time
unclutter &

## tint2 is above other windows
#wmctrl -ir $(wmctrl -li | grep tint2 | awk '{print $1}') -b add,above

## start compositing manager
#xcompmgr-dana -cCfF -o.55 -D4 -m.88 &   # c-shadows affect conky
#xcompmgr-dana -fF -o.55 -D4 -m.88 &
#xcompmgr -cCfF -o.55 -D4 -r4.2 -t-5 -l-5 &

## lock screen with image
#xautolock -time 5 -locker "feh -FZxN --hide-pointer /home/koukos/Downloads/Themes_Stuff/Walls/the_screamy_wall/screamy1280x1024.jpg" &

## start conky 
sleep 5 && conky -c ~/.conky/nowplaying.conkyrc &

