# c00kiemon5ter (ivan.kanak@gmail.com) ~ under c00kie License

# if shell is non-interactive abord
[[ "$-" != *i* ]] && return

# view current command as title
#if [ "$SHELL" = '/bin/bash' ]; then
#	case $TERM in
#		URxvt*|rxvt*|*term)
#			set -o functrace
#			trap 'echo -ne "\e]0;$BASH_COMMAND\007"' DEBUG
#			export PS1="\e]0;$TERM\007$PS1"	;;
#	esac
#fi
#
# set tty color theme
#if [[ "${TERM}" = "linux" ]]; then
#	theme="console_c00kiez" idx=0
#    while read -r; do
#        printf "\e]P%x%s" "$((idx++))" "${REPLY}"
#    done < <(sed -n '/^[[:alnum:]]/s: *#.*::p' "${HOME}/.color_schemes/${theme}")
#    clear
#fi

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

case $TERM in
    linux)
        idx=0 theme="${HOME}/.color_schemes/console_librec00kiez"
        while read -r; do
            printf "\e]P%x%s" "$((idx++))" "${REPLY}"
        done < <(sed '/^[[:alnum:]]/s: *#.*::' "${theme}")
        source "$HOME"/.shell.colors.escapes
        clear
        ;;
    st-?*) source "$HOME"/.shell.colors.tput
        ;;
    *) source "$HOME"/.shell.colors.escapes
        ;;
esac

source "$HOME"/.alias
source "$HOME"/.funcs

PROMPT_COMMAND=prompt

source "$HOME"/.pacman.alias
source "$HOME"/.git.alias

# set the terminal class/name as the app name
classify() {
    local _term="urxvtc" _classopt="-name"
    for app in "$@"; do
        alias $app="${_term} ${_classopt} ${app} -e ${app}"
    done
}

