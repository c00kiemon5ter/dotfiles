# c00kiemon5ter (ivan.kanak@gmail.com) ~ under c00kie License

# Shell is non-interactive.  Be done now!
[ -z "$PS1" ] && return

# view current command as title
#if [ "$SHELL" = '/bin/bash' ]; then
#	case $TERM in
#		URxvt*|rxvt*|*term)
#			set -o functrace
#			trap 'echo -ne "\e]0;$BASH_COMMAND\007"' DEBUG
#			export PS1="\e]0;$TERM\007$PS1"	;;
#	esac
#fi

# set tty color theme
if [ "$TERM" = "linux" ]; then
	## set the theme name
	local THEME="console_c00kiez"
	## read the theme, remove comments
	local colors=($(cat $HOME/.color_schemes/$THEME | sed "s/#.*//"))
	## apply the colors
	for index in ${!colors[@]}
	do
        printf "\e]P%x%s" $index "${colors[$index]}"
    done
	clear #for background artifacting
fi

CDPATH=".:${HOME}/projects/:${HOME}/data/"
test -r .dircolors && eval "export $(dircolors -b .dircolors)"
source "$HOME"/.alias
source "$HOME"/.funcs
source "$HOME"/.completion

# set color variables {{{
fgblk="$(tput setaf 0)"		# Black - Regular
fgred="$(tput setaf 1)"		# Red
fggrn="$(tput setaf 2)"		# Green
fgylw="$(tput setaf 3)"		# Yellow
fgblu="$(tput setaf 4)"		# Blue
fgpur="$(tput setaf 5)"		# Purple
fgcyn="$(tput setaf 6)"		# Cyan
fgwht="$(tput setaf 7)"		# White
bfgblk="$(tput setaf 8)"	# Black - Intense
bfgred="$(tput setaf 9)"	# Red
bfggrn="$(tput setaf 10)"	# Green
bfgylw="$(tput setaf 11)"	# Yellow
bfgblu="$(tput setaf 12)"	# Blue
bfgpur="$(tput setaf 13)"	# Purple
bfgcyn="$(tput setaf 14)"	# Cyan
bfgwht="$(tput setaf 15)"	# White
bgblk="$(tput setab 0)"		# Black - Background
bgred="$(tput setab 1)"		# Red
bggrn="$(tput setab 2)"		# Green
bgylw="$(tput setab 3)"		# Yellow
bgblu="$(tput setab 4)"		# Blue
bgpur="$(tput setab 5)"		# Purple
bgcyn="$(tput setab 6)"		# Cyan
bgwht="$(tput setab 7)"		# White
bbgblk="$(tput setab 8)"	# Black - Background - Intense
bbgred="$(tput setab 9)"	# Red
bbggrn="$(tput setab 10)"	# Green
bbgylw="$(tput setab 11)"	# Yellow
bbgblu="$(tput setab 12)"	# Blue
bbgpur="$(tput setab 13)"	# Purple
bbgcyn="$(tput setab 14)"	# Cyan
bbgwht="$(tput setab 15)"	# White
normal="$(tput sgr0)"	# text reset
undrln="$(tput smul)"	# underline
noundr="$(tput rmul)"	# remove underline
mkbold="$(tput bold)"	# make bold
mkblnk="$(tput blink)"	# make blink
revers="$(tput rev)"	# reverse
# }}}
PROMPT_COMMAND=prompt
#wazaaa
