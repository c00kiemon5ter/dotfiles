# c00kiemon5ter (ivan.kanak@gmail.com) ~ under c00kie License

# Shell is non-interactive.  Be done now!
[[ "$-" != *i* ]] && return
#[ -z "$PS1" ] && return

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
if [[ "${TERM}" = "linux" ]]; then
	theme="console_c00kiez" idx=0
    while read -r; do
        printf "\e]P%x%s" "$((idx++))" "${REPLY}"
    done < <(sed -n '/^[[:alnum:]]/s: *#.*::p' "${HOME}/.color_schemes/${theme}")
    clear
fi

CDPATH=".:${HOME}/projects/:${HOME}/data/"
test -r .dircolors && eval "export $(dircolors -b .dircolors)"

shopt -s cdspell
shopt -s checkwinsize
shopt -s cmdhist
shopt -s dirspell
shopt -s histappend
shopt -s hostcomplete
shopt -s no_empty_cmd_completion
shopt -s nocaseglob

source "$HOME"/.alias
source "$HOME"/.funcs
source "$HOME"/.shell.colors.tput

PROMPT_COMMAND=prompt

source "$HOME"/.pacman.alias
source "$HOME"/.git.alias

