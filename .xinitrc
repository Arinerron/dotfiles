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

#redshift -l '45.418678:-122.787262' &
(redshift -l "$(curl -s "https://location.services.mozilla.com/v1/geolocate?key=geoclue" | sed 's/.*"lat": \([0-9.]*\).*"lng": \([0-9.]*\).*/\1:\2/')") &
#sh -c 'while true; do picom -D0 --vsync=false -cCGf --backend 'glx'; done' &
#feh --bg-center --bg-fill Downloads/arinerron2-desktop.png
feh --bg-center --bg-fill Pictures/black.jpg

#ckb-next -b &
#STEAM_RUNTIME_PREFER_HOST_LIBRARIES=0 steam -nojoy &

xrandr --dpi 220

#xmodmap ~/.Xmodmap
#xinput set-prop 'SynPS/2 Synaptics TouchPad' 'libinput Accel Speed' 1
#xinput --set-prop 'TPPS/2 Elan TrackPoint' 'libinput Accel Speed' 1.0

#xinput set-prop 'Synaptics TM3512-010' 'libinput Accel Speed' 0.7
#xinput set-prop 'Synaptics TM3512-010' 'libinput Click Method Enabled' 0 1
#xinput set-prop 'Synaptics TM3512-010' 'libinput Tapping Enabled' 1

xinput set-prop 'SNSL002D:00 2C2F:002D Touchpad' 'libinput Tapping Enabled' 1
xinput set-prop 'SNSL002D:00 2C2F:002D Touchpad' 'libinput Accel Speed' 0.8
xinput set-prop 'SNSL002D:00 2C2F:002D Touchpad' 'libinput Scrolling Pixel Distance' 10


setxkbmap -option compose:ralt,caps:super
#xmodmap ~/.Xmodmap
#setxkbmap -option caps:super
xcape -e 'Caps_Lock=Escape;Super_L=Escape'
xset m 2200/10 100
xset m 26/10 4


# run spectacle --region --background --copy-image when pressing PrintScreen
xbindkeys -f ~/.xbindkeysrc &


spectacle --dbus &
i3-battery-popup -n -L 8 &

/events/xserver_start.sh

export $(dbus-launch)

#xset m 20/2 30

gpg-agent --daemon --default-cache-ttl 21600 -v 2>&1 | tee -a /tmp/gpg-agent.log &
dockd --daemon &

export XDG_CURRENT_DESKTOP=KDE # use kdialog for chromium file chooser

exec ssh-agent i3
#exec ssh-agent gpg-agent i3

