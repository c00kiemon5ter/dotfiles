# c00kiemon5ter (ivan.kanak@gmail.com) ~ under c00kie License

# if shell is non-interactive abord
[ "$-" != "${-%i*}" ] || return

shopt -s cdspell
shopt -s checkwinsize
shopt -s cmdhist
shopt -s dirspell
shopt -s histappend
shopt -s no_empty_cmd_completion
shopt -s nocaseglob

CDPATH=".:$HOME:$HOME/projects:/mnt/data"
test -r "$HOME/.dircolors" && eval "export $(dircolors -b "$HOME/.dircolors")"
[ "$TERM" == 'linux' ] && xcolors2console.awk "$HOME/.color_schemes/solarcookies"

. "$HOME/.shell.colors.escapes"
. "$HOME/.alias"
. "$HOME/.funcs"
. "$HOME/.pacman.alias"
. "$HOME/.git.alias"

PROMPT_COMMAND=prompt

