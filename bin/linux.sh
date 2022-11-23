#!/bin/bash


if [cat uname -a == 'Linux']
then
#This if statement checks if OS type is linux.
        echo 'Operating System Type: Linux' >> linuxsetup.log #if it is linux, then the echo statment verifying the os type is appended to log file.
else
        echo 'ERROR:Operating system type is not LINUX' >> linuxsetup.log #if not equal, then error message is appended to log file.
        exit #exit command closes the terminal.
fi #ends the if statement

mkdir -p ~/.TRASH #This creates the hidden trash subdirectory in the home directory
mv ~/.vimrc .bup_vimrc #This renames the vimrc file
echo '.vimrc file was changed to ".bup_vimrc"' >> linuxsetup.log #dumps message to linuxsetup.log that .vimrc to .bup_vimrc
cat .bup_vimrc >>.vimrc #This line (I think??) recreates a copy of original .vimrc file
echo 'source ~/.dotfiles/etc/bashrc_custom' >> ~/.bashrc #Appends the statement to the .bashrc file.

