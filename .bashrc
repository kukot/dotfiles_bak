#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# alias ls='ls --color=auto'
# PS1='[\u@\h \W]\$ '
export AWT_TOOLKIT="MToolkit wmname LG3D"
export _JAVA_AWT_WM_NONREPARENTING=1
#export JAVA_HOME=/home/cucot/.local/sdk/jdk-11.0.2
export JAVA_HOME=/home/cucot/.local/sdk/jdk1.8.0_281
export PATH=$PATH:$JAVA_HOME/bin

#BEGIN: input method
export GTK_IM_MODULE=xim
export QT_IM_MODULE=xim
export XMODIFIERS=@im=ibus
export QT4_IM_MODULE=ibus
export CLUTTER_IM_MODULE=ibus
ibus-daemon -drx
#END: input method
export MVN_HOME=/home/cucot/.local/sdk/apache-maven-3.6.3
export CUSTOM_SCRIPT=/home/cucot/.script
export PATH=$PATH:$MVN_HOME/bin:$CUSTOM_SCRIPT
export FLUTTER_HOME=/home/cucot/.local/sdk/flutter
export ANDROID_HOME=/home/cucot/.local/sdk/androidsdk
export CHROME_EXECUTABLE=/usr/bin/chromium
export PATH=$PATH:$FLUTTER_HOME/bin:$ANDROID_HOME/bin
alias dualmonitor='xrandr --output eDP1 --mode 1920x1080 --pos 0x0 --output HDMI1 --mode 3840x2160 --pos 1920x0'
alias lapmonitoroff='xrandr --output eDP1 --off'
alias hdmi4k='xrandr --output HDMI1 --mode 3840x2160'
alias hdmi2k='xrandr --output HDMI1 --mode 2560x1440'
source "$HOME/.cargo/env"
alias scanwifi='connmanctl scan wifi'
alias showwifi='connmanctl services'
alias updatetime='sudo ntpdate -u ntp.ubuntu.com'

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/home/cucot/.sdkman"
[[ -s "/home/cucot/.sdkman/bin/sdkman-init.sh" ]] && source "/home/cucot/.sdkman/bin/sdkman-init.sh"

export GOPATH="$HOME/.go"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
