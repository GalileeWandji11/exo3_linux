#!/bin/bash

mkdir ~/bin
mkdir ~/cegep
mkdir ~/projets

sudo pacman -S git vim gcc gdb python3 python-pip

#copie tout les fichiers avec . dans le home en ignorant le . et ..
cp -r .??* ~/ 

cp -r init.vim ~/.config
