#!/bin/bash
for i in .bash_aliases  .bashrc  .fd2rc  .gitconfig  .netrc  .pip.pip.conf  .screenrc  .vimrc  .xinitrc;do
    if [ ! -f $HOME/$i ]; then
        echo $HOME/$i
        cp $i $HOME
        echo CREATED $HOME/$i
    else
        echo Already EXIST NOT Updated $HOME/$i
    fi
done

if [ ! -f $HOME/.pip/.pip.conf ]; then
    echo $HOME/.pip
    mkdir $HOME/.pip/
    cp .pip.pip.conf $HOME/.pip/.pip.conf
fi
