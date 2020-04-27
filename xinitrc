xrdb -merge ~/.Xresources
source /etc/X11/xinit/xinitrc.d/50-systemd-user.sh
BROWSER=/usr/bin/firefox-beta
KDEWM=awesome
export KDEWM=awesome
xset dpms force off; xset dpms force on
#exec awesome
xmodmap ~/.Xmodmap
exec /usr/bin/startplasma-x11
