#!/bin/bash

# TODO: proper menu
translate(){
	en2gr(){
		curl -s http://www.in.gr/dictionary/lookup.asp?Word=$(echo $@ | sed -e 's/ /+/') | grep -i explanation | tr [\</?\>] '\n' | grep : | sed -n '2p' | sed -e 's/^\.\?[[:space:]]\|[:.]//g' | iconv -f=ISO-8859-7 -t=UTF-8
	}

	gr2en(){
		curl -s http://www.in.gr/dictionary/lookup.asp?word=$(perl -MURI::Escape -e "print uri_escape('$(echo $@ | iconv -f=UTF-8 -t=ISO-8859-7)')") | grep -i explanation | iconv -f=ISO-8859-7 -t=UTF-8 | sed -e 's/Δείτε επίσης: /\n/g' | sed -n '2p' | sed -e 's-</[^>]*>--g' | sed -e 's/<a[^>]*>//g'
	}

	usage(){
		echo "usage is: translate [option] word"
		echo "Supported options are:"
		echo "	-e :	english to greek translation"
		echo "	-g :	greek to english translation"
	}

	if [ $# -ne 2 ]; then
		usage
	elif [ $1 = "-e" ]; then
		en2gr $2
	elif [ $1 = "-g" ]; then
		gr2en $2
	else
		usage
	fi;
}

