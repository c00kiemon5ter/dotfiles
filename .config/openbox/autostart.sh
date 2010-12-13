#!/bin/bash
# c00kiemon5ter (ivan.kanak@gmail.com) ~ under c00kie License

# tint panel
tint2 &

# start parcellite clipboard
parcellite &

# have a termnal ready
$HOME/.bin/urxvtc -geometry 98x28+54+52 & #90x24+54+52

# nowplaying conky
sleep 2 && conky -c $HOME/.conky/nowplaying.conkyrc &
