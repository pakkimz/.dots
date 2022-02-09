#!/bin/sh
$HOME/.config/polybar/launch.sh &
hsetroot -cover $HOME/.local/share/backgrounds/d7c6116.png &
picom &
sxhkd &
xnots &
devmon &
# redshift &
nm-applet &
clipmenud &
unclutter &
xss-lock slock &
# xautolock -time 10 -locker slock &
xautolock -time 14 -locker "loginctl suspend" &
xrdb -I$HOME ~/.Xresources
xsetroot -cursor_name left_ptr &
pgrep bspswallow || bspswallow &
# configure keyboard repeat speed
xset r rate 400 40
exec bspwm
