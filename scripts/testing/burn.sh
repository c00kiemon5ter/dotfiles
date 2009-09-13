#!/bin/bash

if [ "$!" eq "0" ]; then
	echo -e "\nUsage is: burn path/to/data\n"
	return 1;
fi;

data_path="$@"
data_dir="$(echo "$data_path" | awk {print $last/in/path})"

echo -e "\nBuilding image "$data_dir".iso\n"
$(mkisofs -r -o "$data_dir".iso "$data_path"/*)
if [ "$!?" = 0 ]; then
	echo -e "\nImage is ready..\n"
else
	echo -e "\nmakeisofs: Ooops! Something went wrong\nexiting..\n"
	return 1;
fi

echo -e "\nStarted writing to disk...\n"
$(growisofs -Z /dev/sr0="$data_dir".iso)
if [ "$!?" = 0 ]; then
	echo -e "\nDone, bye..\n"
else
	echo -e "\ngrowisofs: Ooops! Something went wrong\nterminating..\n"
	return 1;
fi;

