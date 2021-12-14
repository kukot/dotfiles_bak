#!/bin/bash
scriptdir=$(cd `dirname $0` && pwd)
files=('sdkrc' 'aliasrc' 'bashrc' 'zshrc' 'tmux.conf')
for file in "${files[@]}"; do
    if [[ -f "$HOME/.$file" || -L "$HOME/.$file" ]]; then
        echo "$file already exists"
    else
        ln -s $scriptdir/$file $HOME/.$file
    fi
done

if [[ -f "$HOME/.tokenrc" ]]; then
    echo "Skip adding dummy .tokenrc 'cause it's already there"
else
    echo "#Auto generated, feel free to put your token here" > $HOME/.tokenrc
fi

#Configuring nvim
if [[ -e "$HOME/.config/nvim" ]]; then
    echo "nvim config exists, please manually modify the config yourself"
else
    ln -s $scriptdir/nvim $HOME/.config/nvim
fi

#Configuring i3
if [[ -e "$HOME/.config/i3" ]]; then
    echo "i3 config already exists, please manually modify the config yourself"
else
    ln -s $scriptdir/i3 $HOME/.config/i3
fi

#echo "#This file is automatically created to fit the convention, ignored in git, feel safe to save your token here" > $HOME/.tokenrc
