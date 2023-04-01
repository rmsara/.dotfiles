#!/bin/bash
A=$(uname -s) 
if [ $A == "Linux" ]; then
	echo "valid" 
else
	echo "error:uname =! Linux " >> linuxsetup.log
	exit
fi

mkdir ~/.TRASH

if [ -f ~/.vimrc ]; then
	mv ~/.vimrc ~/.bup_vimrc
	echo " .vimrc renamed to .bup_vimrc" >> linuxsetup.log
	
fi
cp etc/vimrc ~/.vimrc
echo " source ~/.dotfiles/etc/bashrc_custom " >> ~/.bashrc


	

