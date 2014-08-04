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
unsetopt nomatch
setopt autopushd
#ulimit -c unlimited
#ulimit -c 100
bindkey -e

#export ZSH_THEME="flazz"
#export ZSH_THEME="jreese"
#export ZSH_THEME="afowler"
#export ZSH_THEME="rkj-repos"
export ZSH_THEME="xiong-chiamiov-plus"


# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git git-flow vundle extract deb rails ruby rake)

source $ZSH/oh-my-zsh.sh
if [ -e ~/.zshrc.local ]
then
	source ~/.zshrc.local
fi
export PATH=/usr/local/bin:~/bin:~/.xmonad/bin:~/.cabal/bin:~/android-sdk-linux/platform-tools:/usr/local/go/bin:/usr/local/cuda/bin:$HOME/git/rbenv/bin:/root/.gem/ruby/2.0.0/bin:~/.gem/ruby/2.0.0/bin:$PATH

# Customize to your needs...
#stty -ixon -ixoff
alias sudo='nocorrect sudo ' # space after checks next word for alias
#unalias mv
#unalias mkdir
alias less='less -R'
alias tmux='TERM=screen-256color-bce tmux'
alias cvim='POWERLINE=0 SOLARIZED=0 vim'
alias svim='sudoedit'
alias emacs='emacsclient'
alias sshx='ssh -XC'
alias sar='LANG=C sar'
alias open='gnome-open'
alias packers='packer --noedit --noconfirm'
alias packerd='packer --noedit --noconfirm --devel'
alias paczfsr='sudo pacman -R zfs-git zfs-utils-git spl-git spl-utils-git'
alias paczfsi='sudo yaourt -S zfs-git --noconfirm && sudo zfs mount -a'
alias pidgin='NSS_SSL_CBC_RANDOM_IV=0 pidgin'
alias upgradey='sudo apt-get update && sudo apt-get -y upgrade'
alias upgrade='sudo apt-get update && sudo apt-get upgrade'
#export TERM=rxvt-unicode-256color
#[ -n "$TMUX" ] && export TERM=screen-256color
eval `dircolors ~/.dircolors.256-dark`
envoy
source <(envoy -p)
