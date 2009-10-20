#!/bin/sh

app_exec=$1
app_wm_class="$(wmctrl -lx | grep -i $(echo $app_exec | sed 's/-bin$//') | cut -d" " -f4 | sed -e 's/\..*$//')"

if [ -z "$app_wm_class" ]; then # no app started, so start one
	if [ "$app_exec" -eq "urxvt" ]; then
		~/.scripts/urxvt_client.sh &
	else
		$1 &
	fi;
else 		# search for existing apps on current desktop
	current_desk=$(wmctrl -d | grep '*' | cut -d' ' -f1)
	app_on_this_desk=$(wmctrl -lx | grep "$current_desk[ ]*$1" | cut -d' ' -f1)
	if [ -n "$app_on_this_desk" ]; then 
		wmctrl -i -R $app_on_this_desk
	else 	# no apps on current desktop, so just open the first one
		wmctrl -x -R $app_wm_class
	fi;		# NOTE: replace -R with -a to switch to the desktop where the app is
fi;

