#start ibus everytime entering X environment
#BEGIN: input method
export GTK_IM_MODULE=xim
export QT_IM_MODULE=xim
export XMODIFIERS=@im=ibus
export QT4_IM_MODULE=ibus
export CLUTTER_IM_MODULE=ibus
ibus-daemon -drx
#END: input method
eslstatus &
exec i3
#export DESKTOP_SESSION=plasma
#exec startplasma-x11
