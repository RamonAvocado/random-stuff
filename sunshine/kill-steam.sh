#!/bin/bash

PROCESSES=$(pgrep steam)

for process in $PROCESSES; do
	kill -9 $process
done

