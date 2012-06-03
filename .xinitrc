#!/bin/bash
# Add font paths
xset +fp /usr/share/fonts/local
xset +fp /usr/share/fonts/TTF
#Speed up keyboard
xset r rate 351 25 &
#Mouse pointer just in case..
xsetroot -cursor_name left_ptr &
#XRDB script
~/bin/xrd &
#Make Caps key as <Ctrl>
setxkbmap -option ctrl:nocaps &
#xmodmap ~/.xmodmap &
#transparency through xcompmgr
xcompmgr &
#URXVT Daemon and Screensaver
urxvtd -q -o -f &
xscreensaver -no-splash &

#=====================================
#Xrandr Stuff if needed
#xrandr --output LVDS1 --off &
#sleep 3
#xrandr --output VGA1 --mode 1360x768 &
#xrandr --output LVDS1 --mode 1024x600 &
#sleep 2
#xrandr --output VGA1 --left-of LVDS1 --mode 1024x768 &
#xrandr --output LVDS1 --auto --output VGA1 --mode 1024x768 --same-as LVDS1
#=====================================

#Launch the WM
exec ck-launch-session dbus-launch --sh-syntax --exit-with-session awesome

#Hacked way for launching polkit-agent 
#exec ck-launch-session dbus-launch --sh-syntax --exit-with-session ~/bin/xstart
