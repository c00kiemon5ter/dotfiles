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
export HISTCONTROL=erasedups
export HISTIGNORE="&:cd:ls:[bf]g:history:exit"
export PS1='\n\[\e[0;32m\]┌─[ \[\e[1;32m\]\u\[\e[0m\e[0;32m\] ][ \[\e[33;1m\]\w\[\e[0;32m\] ]\n\[\e[0;32m\]└─╼\[\e[0m\] '

JAVAHOME="$JDK_HOME"
export OOO_FORCE_DESKTOP=gnome

## Alias ##

# remote ssh to uni servers
alias aueb='env LANG="el_GR.UTF-8@euro" ssh p3060190@dias.aueb.gr'
alias alex="telnet p3060190@alexandros.ccslab.aueb.gr"
alias foss="ssh root@foss.aueb.gr"

# fortune equality
alias fortune="fortune -e -a"
# Gets a random Futurama quote from slashdot.org(/.)
alias futurama="curl -Is slashdot.org | egrep '^X-(F|B|L)' | cut -d \- -f 2"
alias cowfortune='cowthink -d $(fortune -sea)'

# funny quotes from bash.org @irc
bashfortune() {
	curl -s http://bash.org/?random1|grep -oE "<p class=\"quote\">.*</p>.*</p>"|grep -oE "<p class=\"qt.*?</p>"|sed -e 's/<\/p>/\n/g' -e 's/<p class=\"qt\">//g' -e 's/<p class=\"qt\">//g'|perl -ne 'use HTML::Entities;print decode_entities($_),"\n"'|head -1
}

# always use color with ls and grep
alias ls="ls --color=always"
alias grep="grep --color=always"
alias egrep="egrep --color=always"
# Disable wraping of long lines
alias nano="nano -w"

# dump euse error messages
alias euse="euse -i $@ 2>/dev/null"

# ccache auto find file
alias ccache='CCACHE_DIR="/var/tmp/ccache" ccache'

# the 'tree' command ..revisited
alias tree="find . -print | sed -e 's;[^/]*/;|____;g;s;____|; |;g'"

# irssi and title
#alias irssi="gnome-terminal --title=IRSSI -x irssi"
#alias irssi="konsole --title=IRSSI -e irssi >&"

# Shows your WAN IP, when you`re sitting behind a router
#alias getIp='curl -s www.wieistmeineip.de | egrep -o "[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}"'
alias myIp="curl -s checkip.dyndns.org | grep -Eo '[0-9\.]+'"

# Quartus 9.0
alias quartus="/opt/altera9.0/quartus/bin/quartus"

# Look up the definition of a word
dict() {
	curl -s dict://dict.org/d:$1 | perl -ne 's/\r//; last if /^\.$/; print if /^151/../^250/';
}

# Look and Feel of Netbeans
alias netbeans-6.7="netbeans-6.7 --laf com.sun.java.swing.plaf.gtk.GTKLookAndFeel"

# emerge via sudo
#alias emerge="sudo emerge"

## StartUp quottes ##
#cowthink -d $(fortune -s -e -a) && echo;
#cowthink -d $(futurama);
#cowthink -d $(bashfortune);

# the matrix
alias matrix='tr -c "[:digit:]" " " < /dev/urandom | dd cbs=$COLUMNS conv=unblock | GREP_COLOR="1;32" grep --color "[^ ]"'

# TODO: Seperate and move to scripts with proper menu
# translate a word
translate(){
	en2gr(){
		curl -s http://www.in.gr/dictionary/lookup.asp?Word=$(echo $@ | sed -e 's/ /+/') | grep -i explanation | tr [\</?\>] '\n' | grep : | sed -n '2p' | sed -e 's/^\.\?[[:space:]]\|[:.]//g' | iconv -f=ISO-8859-7 -t=UTF-8
	}

	gr2en(){
		curl -s http://www.in.gr/dictionary/lookup.asp?word=$(perl -MURI::Escape -e "print uri_escape('$(echo $@ | iconv -f=UTF-8 -t=ISO-8859-7)')") | grep -i explanation | iconv -f=ISO-8859-7 -t=UTF-8 | sed -e 's/Δείτε επίσης: /\n/g' | sed -n '2p' | sed -e 's-</[^>]*>--g' | sed -e 's/<a[^>]*>//g'
	}

	usage(){
		echo "usage is: translate [option] word"
		echo "Supported options are:"
		echo "	-e :	english to greek translation"
		echo "	-g :	greek to english translation"
	}

	if [ $# -ne 2 ]; then
		usage
	elif [ $1 = "-e" ]; then
		en2gr $2
	elif [ $1 = "-g" ]; then
		gr2en $2
	else
		usage
	fi;
}

# screenshot with style
scrotshot() {
	clear && cowthink -d $(fortune -eas) && echo && echo && uname -a && echo && emerge --info | head -n1 && echo && scrot -cd5 -q100 '%F_%T_$wx$h_scrot.jpg'
}

# moc-player theme -- set in the config file
#alias mocp='mocp -T /usr/share/moc/themes/transparent-background'


