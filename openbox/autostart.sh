#!/bin/bash
# c00kiemon5ter (ivan.kanak@gmail.com) ~ under c00kie License
#
# some settigns moved to .xinitrc

## load the default autostart.sh
#. $GLOBALAUTOSTART &

## merge xdefault settings to X db
#xrdb -merge $HOME/.Xdefaults &

## set wallpaper 
#sh ${HOME}/.fehbg &

## tint panel
tint2 &

## start urxvt daemon
#urxvtd -q -f -o &
## have a termnal ready
${HOME}/.bin/urxvt_client.sh -geometry 90x24+54+52 &

## toogle keyboard layout with S-A
#setxkbmap -model evdev -layout us,gr -variant extended -option grp_led:scroll,eurosign:e,grp:alt_shift_toggle &
#,lv3:rwin_switch,altwin:left_meta_win & 

## tiling openbox windows
#pytyle &

## enable numlock
#numlockx on &

## start parcellite clipboard
parcellite &

## hide mouse after some idle time
#unclutter &

## volume tray icon
#volwheel &

## start x compositing manager
#xcompmgr-dana -cCfF -o.55 -D4 -m.88 &   # c-shadows affect conky
#xcompmgr-dana -fF -o.55 -D4 -m.88 &
#xcompmgr -cCfF -o.55 -D4 -r4.2 -t-5 -l-5 &
## start cairo compositing manager
#cairo-compmgr &

## lock screen with image
#xautolock -time 5 -locker "feh -FZxN --hide-pointer $HOME/Downloads/Themes_Stuff/Walls/the_screamy_wall/screamy1280x1024.jpg" &

## start conky 
sleep 2 && conky -c ${HOME}/.conky/nowplaying.conkyrc &
#sleep 2 && conky -c ${HOME}/.tasklist/tasks.conkyrc &

# vim: nospell
