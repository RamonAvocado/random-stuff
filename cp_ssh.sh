#!/bin/bash

folder=$1

if [[ -e $folder ]]; then
	echo "Exists"
else
	echo "Not exists"
fi
