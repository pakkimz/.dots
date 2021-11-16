#!/bin/sh
$HOME/.config/polybar/launch.sh &
sxhkd &
xnots &
devmon &
# redshift &
picom &
nm-applet &
clipmenud &
unclutter &
~/.fehbg &
xss-lock slock &
# xautolock -time 10 -locker slock &
xautolock -time 14 -locker "loginctl suspend" &
xrdb -I$HOME ~/.Xresources
xsetroot -cursor_name left_ptr &
pgrep bspswallow || bspswallow &
# configure keyboard repeat speed
xset r rate 350 35
exec bspwm
