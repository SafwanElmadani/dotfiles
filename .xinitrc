#!/usr/bin/sh

nitrogen --restore &

picom --config ~/.config/i3/picom.conf &

#for nvidia
#xrandr --setprovideroutputsource modesetting NVIDIA-0
#xrandr --auto
#/etc/lightdm/display_setup.sh &

dunst &

/usr/lib/policykit-1-gnome/polkit-gnome-authentication-agent-1 &

udiskie &

blueman-applet &
#blueman-tray &

nm-applet &

flameshot &

numlockx on &

volumeicon &

# xset s off &

# xset -dpms &

# xscreensaver --no-splash  &

dwmblocks &

export DBUS_SESSION_BUS_ADDRESS=unix:path=/run/user/1000/bus
export _JAVA_AWT_WM_NONREPARENTING=1

export QT_QPA_PLATFORMTHEME=qt5ct

#export $(dbus-launch)
#while true; do
#   xsetroot -name "$( date +" %h %d, %Y %I:%M %p" )"
#   sleep 1m    # Update time every minute
#done &

#while true; do
exec dwm
#done
