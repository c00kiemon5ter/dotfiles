#@ Bash shell function
#@ Author: Chris F.A. Johnson
#@ uri_escape - convert STRING to hex-encoded string 
#@              and assign to optional VAR or _URI_ESCAPE
#@ USAGE: uri_escape STRING [VAR]
uri_escape()
{
  local string x
  string=$1
  var=${2:-_URI_ESCAPE}

  while [ -n "$string" ] ## loop until $string is empty 
  do
     case $string in

       ## If alphanumeric or underscore, add it unchanged
       [_a-zA-Z0-9]* ) printf -v x "%s%c" "$x" "$string" ;;

       ## ...otherwise convert first character to hexadecimal
       *) printf -v x "%s%%%X" "$x" "'$string" ;;

     esac
     string=${string#?} ## remove first character from string
  done
  eval "$var=\$x"
}
