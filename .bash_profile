export PATH=/usr/share/perl5/vendor_perl/auto/share/dist/Cope:${PATH}:$HOME/.bin

export HISTCONTROL=erasedups
export HISTIGNORE="&:pwd:cd:~:[bf]g:history *:l:l[wsla]:lla:exit:\:q"

export BROWSER=chromium
export EDITOR=vim

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
lsyncd --logfile "$MUSIC_SYNC_LOG" "$HOME/music/" "$HOME/data/music/syncd/"
PROJECTS_SYNC_LOG="$HOME/.lsyncd/projects.sync.log"
lsyncd --logfile "$PROJECTS_SYNC_LOG" "$HOME/projects/" "$HOME/data/projects/syncd/"

if [ -z "$DISPLAY" ] && [ "$(tty)" = "/dev/tty1" ]
then
	. startx
	logout
fi

