export AWT_TOOLKIT=MToolkit
export _JAVA_AWT_WM_NONREPARENTING=1
eval $(/usr/bin/gnome-keyring-daemon --start --components=pkcs11,secrets,ssh)
export SSH_AUTH_SOCK
sxhkd &
exec dbus-launch bspwm
