#!/bin/sh

userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap

# merge in defaults and keymaps

if [ -f $sysresources ]; then







    xrdb -merge $sysresources

fi

if [ -f $sysmodmap ]; then
    xmodmap $sysmodmap
fi

if [ -f "$userresources" ]; then







    xrdb -merge "$userresources"

fi

if [ -f "$usermodmap" ]; then
    xmodmap "$usermodmap"
fi

# start some nice programs

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi

redshift -l '45.418678:-122.787262' &
sh -c 'while true; do picom -D 3 --vsync -cCGf; done' &
feh --bg-center --bg-fill Downloads/arinerron2-desktop.png

#ckb-next -b &
#STEAM_RUNTIME_PREFER_HOST_LIBRARIES=0 steam -nojoy &

xmodmap ~/.Xmodmap

xrandr --dpi 220

xinput set-prop 'SynPS/2 Synaptics TouchPad' 'libinput Accel Speed' 0.7
xinput set-prop 'SynPS/2 Synaptics TouchPad' 'libinput Click Method Enabled' 0 1
xinput set-prop 'SynPS/2 Synaptics TouchPad' 'libinput Tapping Enabled' 1

spectacle --dbus &
i3-battery-popup -n -L 5 &

/events/xserver_start.sh

exec ssh-agent i3
#exec ssh-agent gpg-agent i3

