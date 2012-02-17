#!/bin/bash
mkdir ~/git
cd ~/git
git clone git@github.com:eskimod/dotfiles.git
cd dotfiles
# clone submodules
git submodule init
git submodule update
# install dotfiles
rake install
# mantual link certain files
mkdir vim/_undo
mkdir vim/_backup
mkdir vim/_view
mkdir vim/_temp
mkdir ~/.fonts
mkdir ~/.ssh
mkdir -p ~/.kde/share/apps/konsole
ln -sf ~/git/dotfiles/fonts/Inconsolata-dz-Powerline.otf ~/.fonts/Inconsolata-dz-Powerline.otf
ln -sf ~/git/dotfiles/ssh/config ~/.ssh/config
ln -sf ~/git/dotfiles/ssh/known_hosts ~/.ssh/known_hosts
ln -sf ~/git/dotfiles/kde/share/apps/konsole/* ~/.kde/share/apps/konsole/

cd ..
# get gitflow
git clone https://github.com/nvie/gitflow.git
cd gitflow
sudo make install
cd ..
git clone https://github.com/sigurdga/gnome-terminal-colors-solarized.git gnome-terminal-solarized
gnome-terminal-solarized/install.sh

echo 'edit your passwords in .netrc, .gitconfig'
#passwords in dropbox
