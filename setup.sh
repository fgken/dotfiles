#!/bin/sh
cd `dirname $0`
path=`pwd`

ln -sf $path/vimrc ~/.vimrc

ln -sf $path/bashrc ~/.bashrc_fgken
FGKENRC=". ~/.bashrc_fgken"
if [ ! -e ~/.bashrc -o -z "`grep '# --- fgken bashrc ---' ~/.bashrc`" ]; then
	echo '' >> ~/.bashrc
	echo '# --- fgken bashrc ---' >> ~/.bashrc
	echo $FGKENRC >> ~/.bashrc
	echo '# --------------------' >> ~/.bashrc
fi
