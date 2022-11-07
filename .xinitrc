#!/usr/bin/sh

. /etc/X11/xinit/xinitrc-common

nitrogen --restore &

picom --config ~/.config/i3/picom.conf &

#for nvidia
xrandr --setprovideroutputsource modesetting NVIDIA-0 &
xrandr --auto &
#/etc/lightdm/display_setup.sh &
xrandr --dpi 96 &
#xrandr -s 1920x1080 &

dunst &

/usr/libexec/polkit-gnome-authentication-agent-1 &

udiskie -t &

blueman-applet &
#blueman-tray &

nm-applet &

flameshot &

numlockx on &

volumeicon &

# xset s off &

# xset -dpms &

xscreensaver --no-splash  &

dwmblocks &

export DBUS_SESSION_BUS_ADDRESS=unix:path=/run/user/1000/bus
export _JAVA_AWT_WM_NONREPARENTING=1

export QT_QPA_PLATFORMTHEME=qt5ct

eval $(gnome-keyring-daemon --start)
export SSH_AUTH_SOCK

export SSH_AUTH_SOCK=$(gpgconf --list-dirs agent-ssh-socket)
eval $(gpgconf --launch gpg-agent) # start gpg-agent, if it isn't started already
export GPG_TTY=$(tty)

#export $(dbus-launch)
#while true; do
#   xsetroot -name "$( date +" %h %d, %Y %I:%M %p" )"
#   sleep 1m    # Update time every minute
#done &

#while true; do
exec dwm
#done
