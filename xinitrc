#start ibus everytime entering X environment
#BEGIN: input method
export _JAVA_AWT_WM_NONREPARENTING=1 
export AWT_TOOLKIT=MToolkit 
wmname LG3D
export GTK_IM_MODULE=xim
export QT_IM_MODULE=xim
export XMODIFIERS=@im=ibus
export QT4_IM_MODULE=ibus
export CLUTTER_IM_MODULE=ibus
ibus-daemon -drx
#END: input method

#BEGIN: DWM
#slstatus &
#exec i3
#END DWM

export XDG_CURRENT_DESKTOP=Budgie:GNOME
exec budgie-desktop

#enable keyring
#eval $(/usr/bin/gnome-keyring-daemon --start)
#export SSH_AUTH_SOCK

