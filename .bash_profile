pathdirs=( "/usr/share/perl5/vendor_perl/auto/share/dist/Cope"
           "/usr/bin" "/bin" "/usr/sbin" "/sbin"
           "/usr/bin/*_perl" "/usr/bin/perlbin/vendor"
           "/usr/lib/perl5/*_perl/bin" "/usr/share/perl5/*_perl"
           "/home/c00kiemon5ter/.bin" )
pathdirs="${pathdirs[@]}"
export PATH="${pathdirs// /:}" && unset pathdirs

export HISTCONTROL=erasedups:ignorespace
export HISTIGNORE="&:pwd:cd:~:[bf]g:history *:l:l[wsla]:lla:exit:\:q"

export BROWSER="chromium"
export EDITOR="vim"
export PAGER="less"

export MOST_SWITCHES="-s"
export MOST_EDITOR="$EDITOR"
export SLANG_EDITOR="$EDITOR"

export LESS="-FXRS"
export LESSHISTFILE="/tmp/.lesshst"
export LESS_TERMCAP_mb=$'\e[01;31m'
export LESS_TERMCAP_md=$'\e[01;34m'
export LESS_TERMCAP_me=$'\e[0m' 
export LESS_TERMCAP_se=$'\e[0m' 
export LESS_TERMCAP_so=$'\e[01;46;37m'
export LESS_TERMCAP_ue=$'\e[0m' 
export LESS_TERMCAP_us=$'\e[01;32m'

export MPD_HOST=127.0.0.1
export MPD_PORT=6600

shopt -s cdspell
shopt -s checkwinsize
shopt -s cmdhist
shopt -s dirspell
shopt -s histappend
shopt -s hostcomplete
shopt -s no_empty_cmd_completion
shopt -s nocaseglob

. $HOME/.bashrc

pkill -u "$USER" lsyncd
lsyncd --logfile "$HOME/.lsyncd/music.sync.log" -rsync "$HOME/music/" "$HOME/data/music/syncd/"
lsyncd --logfile "$HOME/.lsyncd/projects.sync.log" -rsync "$HOME/projects/" "$HOME/data/projects/syncd/"

if [ -z "$DISPLAY" ] && [ "$(tty)" = "/dev/tty1" ]
then
	. startx
	logout
fi

