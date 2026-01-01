#!/usr/bin/env bash

set -euo pipefail

folder=$1
password_file="./passwords/${folder%%/}-pass.txt"

if [[ -f "$password_file" ]]; then
	echo $password_file
else
	printf "Enter password %s\n" >&2
	read -r password

	mkdir -p ./passwords

	echo  $password > $password_file
	echo $password_file
fi


