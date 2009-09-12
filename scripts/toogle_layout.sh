#!/bin/bash
if [ $(setxkbmap -print | grep xkb_symbols | awk '{print $4}' | cut -d"+" -f2) = gr ]; then 
	setxkbmap us; 
else 
	setxkbmap gr; 
fi


