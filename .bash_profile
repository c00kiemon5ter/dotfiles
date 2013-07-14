_path=":$HOME/bin:$HOME/bin/iii"
case "$PATH" in *"${_path}"*) false ;; esac && export PATH="${PATH}${_path}"
unset _path

export LC_COLLATE="C"
export LC_CTYPE="el_GR.UTF-8"
export LC_MONETARY="el_GR.UTF-8"

export HISTCONTROL=erasedups:ignorespace
export HISTIGNORE="&:pwd:cd:~:[bf]g:history *:l:l[wsla]:lla:exit:\:q"

export EDITOR="vim"
export VISUAL="vim"
export PAGER="less"
export BROWSER="chromium"

export MOST_SWITCHES="-s"
export MOST_EDITOR="$EDITOR"
export SLANG_EDITOR="$EDITOR"

export GREP_OPTIONS='--color=auto -I'

export LESS="-FXRS"
export LESSHISTFILE="/tmp/.lesshst"
export LESS_TERMCAP_mb=$'\e[01;31m'      # begin blinking
export LESS_TERMCAP_md=$'\e[01;34m'      # begin bold
export LESS_TERMCAP_me=$'\e[0m'          # end
export LESS_TERMCAP_so=$'\e[00;44;33m'   # begin standout
export LESS_TERMCAP_se=$'\e[0m'          # end standout
export LESS_TERMCAP_us=$'\e[01;32m'      # begin underline
export LESS_TERMCAP_ue=$'\e[0m'          # end underline

source "$HOME/.bashrc"

