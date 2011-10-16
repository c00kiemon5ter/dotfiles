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
source "$HOME"/.shell.colors

PROMPT_COMMAND=prompt

source "$HOME"/.completion
source "$HOME"/.pacman.alias
source "$HOME"/.git.alias
source "$HOME"/.mpd.alias
