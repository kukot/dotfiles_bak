#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# alias ls='ls --color=auto'
# PS1='[\u@\h \W]\$ '
export AWT_TOOLKIT="MToolkit wmname LG3D"
export _JAVA_AWT_WM_NONREPARENTING=1
export JAVA_HOME=/home/cucot/.local/sdk/jdk-11.0.2
export PATH=$PATH:$JAVA_HOME/bin
export GTK_IM_MODULE=xim
export QT_IM_MODULE=xim
export XMODIFIERS=@im=ibus
export QT4_IM_MODULE=ibus
export CLUTTER_IM_MODULE=ibus
ibus-daemon -drx
export MVN_HOME=/home/cucot/.local/sdk/apache-maven-3.6.3
PATH=$PATH:$MVN_HOME/bin
alias dualmonitor='xrandr --output eDP1 --mode 1920x1080 --pos 0x0 --output HDMI1 --mode 3840x2160 --pos 1920x0'
alias lapmonitoroff='xrandr --output eDP1 --off'
alias hdmi4k='xrandr --output HDMI1 --mode 3840x2160'
alias hdmi2k='xrandr --output HDMI1 --mode 2560x1440'
source "$HOME/.cargo/env"
