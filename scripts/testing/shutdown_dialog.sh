#!/bin/bash

gxmessage -print "Are you sure you want to shut down your computer?" \
	  -center -title "Confirm Action" \
	  -font "Droid Sans bold 10" \
	  -timeout 60 -wrap \
	  -default "Cancel" \
	  -buttons "_Cancel":1,"_Log out":2,"_Lock Screen":3,"_Reboot":4,"_Shut down":5 #> /dev/null 

case $? in
	1)	echo "Exit";;
	2)	openbox --exit;;
	3)	xlock -mousemotion +description -mode blank -bg black -fg grey30 -font '-adobe-helvetica-lvetica-bold-r-normal--*-110-*-*-*-*-*-*' -planfont '-adobe-helvetica-bold-r-normal--*-110-*-*-*-*-*-*' -timeout 6 -info " " -username "  " -password " " -icongeometry 30x30;;
	4)	ktuss 'shutdown -r now';;
	5)	ktuss 'shutdown -h now';;
esac

