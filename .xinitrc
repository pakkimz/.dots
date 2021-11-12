#!/bin/sh
$HOME/.config/polybar/launch.sh &
sxhkd &
xnots &
devmon &
# redshift &
compton &
nm-applet &
clipmenud &
unclutter &
nitrogen --restore &
xss-lock slock &
# xautolock -time 10 -locker slock &
xautolock -time 14 -locker "loginctl suspend" &
xrdb -I$HOME ~/.Xresources
xsetroot -cursor_name left_ptr &
pgrep bspswallow || bspswallow &
# Configura keyboard repeat speed
xset r rate 300 30
exec bspwm
