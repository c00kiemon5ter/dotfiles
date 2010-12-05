export PATH=/usr/share/perl5/vendor_perl/auto/share/dist/Cope:/usr/bin:/bin:/usr/sbin:/sbin:/usr/lib/perl5/site_perl/bin:/usr/lib/perl5/vendor_perl/bin:/usr/bin/perlbin/vendor:/usr/lib/perl5/core_perl/bin:/home/c00kiemon5ter/.bin

export HISTCONTROL=erasedups
export HISTIGNORE="&:pwd:cd:~:[bf]g:history *:l:l[wsla]:lla:exit:\:q"

export BROWSER=chromium
export EDITOR=vim
export PAGER=less
export LESS_TERMCAP_mb=$'\E[01;31m'       # begin blinking
export LESS_TERMCAP_md=$'\E[01;38;5;74m'  # begin bold
export LESS_TERMCAP_me=$'\E[0m'           # end mode
export LESS_TERMCAP_se=$'\E[0m'           # end standout-mode
export LESS_TERMCAP_so=$'\E[38;5;246m'    # begin standout-mode - info box
export LESS_TERMCAP_ue=$'\E[0m'           # end underline
export LESS_TERMCAP_us=$'\E[04;38;5;146m' # begin underline

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
MUSIC_SYNC_LOG="$HOME/.lsyncd/music.sync.log"
lsyncd --logfile "$MUSIC_SYNC_LOG" -rsync "$HOME/music/" "$HOME/data/music/syncd/"
PROJECTS_SYNC_LOG="$HOME/.lsyncd/projects.sync.log"
lsyncd --logfile "$PROJECTS_SYNC_LOG" -rsync "$HOME/projects/" "$HOME/data/projects/syncd/"

if [ -z "$DISPLAY" ] && [ "$(tty)" = "/dev/tty1" ]
then
	. startx
	logout
fi

