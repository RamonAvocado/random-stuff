#!/bin/bash


HYPR_INSTANCE=$(ls /run/user/1000/hypr)
export XDG_RUNTIME_DIR=/run/user/1000
export WAYLAND_DISPLAY=wayland-0
export HYPRLAND_INSTANCE_SIGNATURE=$HYPR_INSTANCE

hyprctl dispatch dpms on

