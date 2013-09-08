# Path to your oh-my-zsh configuration.
export ZSH=$HOME/.oh-my-zsh
export TEMP=/tmp
export SOLARIZED=1
export POWERLINE=1
export SDL_VIDEO_FULLSCREEN_DISPLAY=0
export SDL_VIDEO_FULLSCREEN_HEAD=1
export FCEDIT=vim
export EDITOR=vim
export ALTERNATE_EDITOR=""
export MONO_GAC_PREFIX=/usr
#export CLASSPATH=/home/eskimod/android-sdk-linux/platforms/android-15/android.jar:$CLASSPATH
#export CLASSPATH=/usr/share/java/junit.jar:$CLASSPATH
#export CLASSPATH=/usr/share/java:$CLASSPATH
#export PATH=$PATH:
unsetopt nomatch
setopt autopushd
#ulimit -c unlimited
#ulimit -c 100
bindkey -e

#export ZSH_THEME="flazz"
#export ZSH_THEME="jreese"
#export ZSH_THEME="afowler"
export ZSH_THEME="rkj-repos"


# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git git-flow vundle extract deb rails3 ruby rake gpg-agent ssh-agent)

source $ZSH/oh-my-zsh.sh
if [ -e ~/.zshrc.local ]
then
	source ~/.zshrc.local
fi
export PATH=~/bin:~/.xmonad/bin:~/.cabal/bin:~/android-sdk-linux/platform-tools:/usr/local/go/bin:/usr/local/cuda/bin:$HOME/git/rbenv/bin:$PATH

# Customize to your needs...
#stty -ixon -ixoff
alias sudo='nocorrect sudo ' # space after checks next word for alias
unalias mv
unalias mkdir
alias tmux='TERM=screen-256color-bce tmux'
alias svim='sudoedit'
alias emacs='emacsclient -t'
alias blog='BlogLiterately -w -g --blog http://eskimod.net/blog/xmlrpc.php --user eskimod --password poster'
alias irssissh='ssh -L 1234:irc.freenode.net:6667 thenihilistx@clamham.com'
alias ssheecs='ssh mxs802@eecslinab.case.edu'
alias sshx='ssh -XC'
alias sar='LANG=C sar'
alias open='gnome-open'
alias packers='packer --noedit --noconfirm'
alias packerd='packer --noedit --noconfirm --devel'
alias paczfsr='sudo pacman -R zfs zfs-utils spl spl-utils'
alias paczfsi='sudo packers -S spl-utils && sudo packers -S spl && sudo packers -S zfs-utils && sudo packers -S zfs && sudo zfs mount -a'
alias pidgin='NSS_SSL_CBC_RANDOM_IV=0 pidgin'
alias upgradey='sudo apt-get update && sudo apt-get -y upgrade'
alias upgrade='sudo apt-get update && sudo apt-get upgrade'
#export TERM=rxvt-unicode-256color
#[ -n "$TMUX" ] && export TERM=screen-256color
eval `dircolors ~/.dircolors.256-dark`
#eval "$(rbenv init -)"
