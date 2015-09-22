#!/bin/sh
cd `dirname $0`
path=`pwd`

echo "Link .vimrc"
ln -sf $path/vimrc ~/.vimrc

echo "Link .tmux.conf"
ln -sf $path/tmux.conf ~/.tmux.conf

echo "Link .bash_aliases"
ln -sf $path/shell_aliases ~/.bash_aliases
