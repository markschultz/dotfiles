#!/bin/bash
mkdir ~/git
cd ~/git
git clone https://github.com/markschultz/dotfiles.git
git clone https://github.com/gmarik/vundle.git dotfiles/vim/bundle/vundle
git clone https://github.com/robbyrussell/oh-my-zsh.git dotfiles/oh-my-zsh
git clone https://github.com/nvie/gitflow.git
git clone https://github.com/sigurdga/gnome-terminal-colors-solarized.git gnome-terminal-solarized
# install solarize for gnome terminal
gnome-terminal-solarized/install.sh
# install gitflow
sudo make -C gitflow install
# install dotfiles
cd dotfiles
scp eskimod@eskimod.net:~/files/{gitconfig,netrc} ./
rake install
# mantual link certain files
mkdir vim/_undo
mkdir vim/_backup
mkdir vim/_temp
mkdir ~/.fonts
mkdir ~/.ssh
mkdir -p ~/.kde/share/apps/konsole
ln -sf ~/git/dotfiles/fonts/Inconsolata-dz-Powerline.otf ~/.fonts/Inconsolata-dz-Powerline.otf
ln -sf ~/git/dotfiles/ssh/config ~/.ssh/config
ln -sf ~/git/dotfiles/ssh/known_hosts ~/.ssh/known_hosts
ln -sf ~/git/dotfiles/kde/share/apps/konsole/* ~/.kde/share/apps/konsole/

echo 'edit your passwords in .netrc, .gitconfig'
echo '.config/google-talk/config -> audio-flags=1'
#passwords in dropbox
