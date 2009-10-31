# JesusSuperstar (L)(O)(L) (mrJesusSuperstar@gmail.com)
#

# /etc/skel/.bashrc
#
# This file is sourced by all *interactive* bash shells on startup,
# including some apparently interactive shells such as scp and rcp
# that can't tolerate any output.  So make sure this doesn't display
# anything or bad things will happen !


# Test for an interactive shell.  There is no need to set anything
# past this point for scp and rcp, and it's important to refrain from
# outputting anything in those cases.
if [[ $- != *i* ]] ; then
	# Shell is non-interactive.  Be done now!
	return
fi

## view current command as title
#if [ "$SHELL" = '/bin/bash' ]; then
#	case $TERM in
#		rxvt*|*term)
#			set -o functrace
#			trap 'echo -ne "\e]0;$BASH_COMMAND\007"' DEBUG
#			export PS1="\e]0;$TERM\007$PS1"
#			;;
#	esac
#fi

## Put your fun stuff here ##
CDPATH=:..:~/Projects/GITrepos:
#PS1='\n\[\e[0;32m\]┌─[ \[\e[1;32m\]\u\[\e[0m\e[0;32m\] ][ \[\e[33;1m\]\w\[\e[0;32m\] ]\n\[\e[0;32m\]└─╼\[\e[0m\] '
PS1='\n\[\e[0;32m\]┌─[ \[\e[1;31m\]\u\[\e[0;32m@\[\e[1;34m\]\h\[\e[0;32m\] ][ \[\e[1;33m\]\w\[\e[0;32m\] ]\n\[\e[0;32m\]└─╼\[\e[0m\] '
HISTCONTROL=erasedups
HISTIGNORE="&:cd:[bf]g:history:l[sla]:lla:exit:\:q"
JAVAHOME="$JDK_HOME"
OOO_FORCE_DESKTOP=gnome

source ~/.alias
source ~/.funcs

## StartUp quottes ##
#cowthink -d $(fortune -sea) && echo;
#cowthink -d $(futurama) && echo;
#cowthink -d $(bashfortune) && echo;

