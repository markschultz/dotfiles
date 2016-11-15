#!/bin/bash
mkdir ~/git
cd ~/git
git clone https://github.com/markschultz/dotfiles.git
git clone https://github.com/zsh-users/antigen.git dotfiles/antigen
git clone https://github.com/Shougo/neobundle.vim dotfiles/vim/bundle/neobundle.vim
git clone https://github.com/sigurdga/gnome-terminal-colors-solarized.git gnome-terminal-solarized
git clone https://github.com/syl20bnr/spacemacs ~/.emacs.d
git clone https://github.com/SixArm/sixarm_git_gitconfig.git
# install solarize for gnome terminal
gnome-terminal-solarized/install.sh
# install dotfiles
cd dotfiles
#scp eskimod@eskimod.net:~/files/{gitconfig,netrc} ./
rake install
# mantual link certain files
mkdir vim/_undo
mkdir vim/_backup
mkdir vim/_temp
mkdir ~/.ssh
mkdir ~/.gnupg
mkdir -p ~/.kde/share/apps/konsole
mkdir -p ~/.mutt/cache
ln -sf ~/git/dotfiles/ssh/config ~/.ssh/config
ln -sf ~/git/dotfiles/gnupg/gpg.conf ~/.gnupg/gpg.conf
ln -sf ~/git/dotfiles/ssh/known_hosts ~/.ssh/known_hosts
ln -sf ~/git/dotfiles/kde/share/apps/konsole/* ~/.kde/share/apps/konsole/

echo 'edit your passwords in .netrc, .gitconfig'
echo 'change .config/google-talk/config -> audio-flags=1'
#passwords in dropbox
