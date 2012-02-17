#!/bin/bash
mkdir ~/git
cd ~/git
git clone git@github.com:eskimod/dotfiles.git
cd dotfiles
# clone submodules
git submodule init
git sumbodule update
# install dotfiles
rake install
# mantual link certain files
mkdir ~/.fonts
mkdir ~/.ssh
mkdir -p ~/.gconf/apps/gnome-terminal/profiles/Solarized
mkdir -p ~/.kde/share/apps/konsole
ln -s fonts/Inconsolata-dz-Powerline.otf ~/.fonts/Inconsolata-dz-Powerline.otf
ln -s ssh/config ~/.ssh/config
ln -s ssh/known_hosts ~/.ssh/known_hosts
ln -s gconf/apps/gnome-terminal/profiles/Solarized/%gconf.xml .gconf/apps/gnome-terminal/profiles/Solarized/%gconf.xml
ln -s kde/share/apps/konsole/* .kde/share/apps/konsole/

cd ..
# get gitflow
git clone https://github.com/nvie/gitflow.git
cd gitflow
sudo make install
cd ..

echo 'edit your passwords in .netrc, .gitconfig'
#passwords in dropbox
