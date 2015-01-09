#!/bin/sh
cd `dirname $0`
path=`pwd`

# Install NeoBundle.vim
if [ ! -e ~/.vim/bundle/neobundle.vim ]; then
	echo "Install NeoBundle.vim"
	curl https://raw.githubusercontent.com/Shougo/neobundle.vim/master/bin/install.sh | sh
fi

echo "Replace .vimrc"
ln -sf $path/vimrc ~/.vimrc

echo "Replace .tmux.conf"
ln -sf $path/tmux.conf ~/.tmux.conf

echo "Add my .bashrc"
ln -sf $path/bashrc ~/.bashrc_fgken
FGKENRC=". ~/.bashrc_fgken"
if [ ! -e ~/.bashrc -o -z "`grep '# --- fgken bashrc ---' ~/.bashrc`" ]; then
	echo '' >> ~/.bashrc
	echo '# --- fgken bashrc ---' >> ~/.bashrc
	echo $FGKENRC >> ~/.bashrc
	echo '# --------------------' >> ~/.bashrc
fi
