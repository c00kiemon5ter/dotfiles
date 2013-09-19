# c00kiemon5ter (ivan.kanak@gmail.com) ~ under c00kie License

# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# if shell is non-interactive abord
[ "$-" != "${-%i*}" ] || return

shopt -s cdspell
shopt -s checkwinsize
shopt -s cmdhist
shopt -s dirspell
shopt -s histappend
shopt -s no_empty_cmd_completion
shopt -s nocaseglob

CDPATH=".:$HOME:$HOME/projects:$HOME/thinking.gr:$HOME/grobotronics"
test -r "$HOME/.dircolors" && eval "export $(dircolors -b "$HOME/.dircolors")"
[ "$TERM" == 'linux' ] && awk -f "$HOME/bin/xcolors2console.awk" "$HOME/.color_schemes/solarcookies"

. "$HOME/.shell.colors/escapes.sh"
. "$HOME/.alias"
. "$HOME/.funcs"
. "$HOME/.git.alias"

PROMPT_COMMAND=prompt

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

export LESS_TERMCAP_mb=$'\e[01;31m'      # begin blinking
export LESS_TERMCAP_md=$'\e[01;34m'      # begin bold
export LESS_TERMCAP_me=$'\e[0m'          # end
export LESS_TERMCAP_so=$'\e[00;44;33m'   # begin standout
export LESS_TERMCAP_se=$'\e[0m'          # end standout
export LESS_TERMCAP_us=$'\e[01;32m'      # begin underline
export LESS_TERMCAP_ue=$'\e[0m'          # end underline

export TERM="screen-256color"
