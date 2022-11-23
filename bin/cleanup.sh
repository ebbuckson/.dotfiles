#!/bin/bash


rm .vimrc #This removes the .vimrc file
sed 'source ~/.dotfiles/bashrc_custom' ~/.bashrc
rm -r .TRASH

