#!/usr/bin/env bash

show() {
	# usage: show [-i|-r] <message>
	# -i: show an important message
	# -r: show a command
	local important=0
	if [[ "$1" == "-i" ]]; then
		shift
		important=1
		echo -n $'\e[38;5;196m'"$(tput bold)! "
	elif [[ "$1" == "-r" ]]; then
		shift
		echo -n $'\e[38;5;40m$\e[38;5;63m '
	else
		echo -n $'\e[1;34m>\e[0m\e[31m '
	fi

	echo -n "$@"

	if [[ "$important" == "1" ]]; then
		echo -n " $(tput sgr0)"$'\e[0m'
	else
		echo -n $'\e[0m'
	fi

	echo
}

run() {
	# usage: run <command>; SC_DRYRUN=1 means command will not run
	show -r "$@"
	if [[ $SC_DRYRUN == 0 ]]; then
		eval "$@"
		return $?
	else
		return 0
	fi
}
