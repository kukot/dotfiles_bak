#!/bin/bash
files=('sdkrc' 'aliasrc' 'bashrc' 'zshrc' 'tmux.conf')
for file in "${files[@]}"; do
    echo "$HOME/.$file"
    if [[ -f "$HOME/.$file" || -L "$HOME/.$file" ]]; then
        echo "$file already exists"
    else
        ln -s $('pwd')/$file $HOME/.$file
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
    ln -s $('pwd')/nvim $HOME/.config/nvim
fi
#echo "#This file is automatically created to fit the convention, ignored in git, feel safe to save your token here" > $HOME/.tokenrc