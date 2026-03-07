#!/bin/bash

PROCESSES=$(pgrep -fi fear)

for process in $PROCESSES; do
	kill -9 $process
done

