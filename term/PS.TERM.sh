# c00kiemon5ter (ivan.kanak@gmail.com) ~ under c00kie License
# Collection of PS's 
#

## default like 
# user@machine:path $ 
PS1='\[\e[33m\]\u\[\e[37;0m\]@\[\e[37m\]\h:\[\e[37;1m\]\w \$\[\e[0m\] '

## default with some spacing
PS1='\[\033[01;32m\]\u@\h\[\033[01;34m\] \w \$\[\033[00m\] '

## default like with new line
# machine-user path:
# >
PS1='\[\e[0;36m\]\h\[\e[m\]-\[\e[0;37m\]\u\[\e[m\]\[\e[0;37m\] \w:
> '

## default with braces
# [user@machine path]$ 
PS1='[\[\033[1;36m\]\u\[\033[0m\]@\h \W]\$ '

-----------------------------------------------------------
## space looking!
PS1="┌─(\$newPWD)────────────(\$(date \"+%H:%M\"))───┐\n└─(\u@\h \$)─> "

## space looking #2 w/path
PS1="\033[1;37m\]┌─[\[\e[36;1m\]\u@\[\e[32;1m\]\H\[\033[1;37m\]] \n\[\033[1;37m\]└─[\[\033[0;36m\]\w\[\033[1;37m\]]> \[\e[0m\]"

-----------------------------------------------------------
## plain - only path
# [path]
# .:$ 
PS1='[\[\e[0;32m\]\w\[\e[0m\]]\n\[\e[0m\]\[\e[0;31m\].:\[\e[0m\]\$ '

## plain only path
# [path]>> 
PS1="[\[\033[0;36m\]\w\[\e[0m\]]$GREEN>> \[\e[0m\]"
GREEN="\[\e[1;32m\]"

## plain - only path
# [path]$ 
PS1='\[\e[0;1m\][\[\e[0;32m\]\W\[\e[0;1m\]]\[\e[m\]\$ '

## plain - only time and path
# Time AM/PM path >
PS1="\@ \[\033[0;32m\] \w\[\033[0m\] >"

-----------------------------------------------------------
## smooth :)
# user@machine path
# .:$ 
PS1='\n\[\033[0;32m\]\u@\h \[\033[1;33m\]\w\n\[\033[0m\].:$ '
PS1='\n\[\033[0;32m\]\u@\h \[\033[1;33m\]\w\n\[\033[0m\]\[\033[0;32m\].:$\[\033[0m\] '

## can be shrinked
# +-[user@machine] - [date] - [path]
# +-[$]> 
PS1='\n\[\e[0;32m\]┌─[\u\[\e[0m\]@\[\e[0;36m\]\h\[\e[0m\e[0;32m\]] - [\[\e[0m\]\t \d\[\e[0;32m\]] - [\[\e[33;1m\]\w\[\e[0;32m\]]\n└─[\$]>\[\e[0m\] '

## root prompt like above
# +-[user@machine] - [date] - [path]
# +-[$]>
PS1='\n\[\e[1;32m\]┌─[\e[1;31m\]\u\[\e[0m\]@\[\e[1;34m\]\h\[\e[1;32m\]]-[\[\e[0m\]\t \d\[\e[1;32m\]]-[\[\e[33;1m\]\w\[\e[1;32m\]]\n\[\e[1;32m\]└─[\$]>\[\e[0m\] '

## not much color
# +-[ user ][ path ]
# +-o 
PS1="┌─[ \[\e[30;1m\]\u\[\e[0m\] ][ \[\e[33;1m\]\w\[\e[0m\] ]\n└─╼ "

## better
# +-[ user ][ path ]
# +-o 
PS1='\n\[\e[0;32m\]┌─[ \[\e[1;32m\]\u\[\e[0m\e[0;32m\] ][ \[\e[33;1m\]\w\[\e[0;32m\] ]\n\[\e[0;32m\]└─╼\[\e[0m\] '

