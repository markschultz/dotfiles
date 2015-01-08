source "$HOME/.antigen/antigen.zsh"

antigen use oh-my-zsh
antigen bundle git
antigen bundle git-flow
#antigen bundle extract
antigen bundle pip
antigen bundle rsync
antigen bundle python
antigen bundle command-not-found
antigen bundle tmux
antigen bundle history
antigen bundle vundle
#antigen bundle zsh-users/zsh-completions src
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle tarruda/zsh-autosuggestions

antigen theme xiong-chiamiov-plus
antigen apply

[ -e "{$HOME}/.zsh_aliases" ] && source "${HOME}/.zsh_aliases"
[ -e "{$HOME}/.zshrc_local" ] && source "${HOME}/.zshrc_local"


export TEMP=/tmp
export SOLARIZED=1
export POWERLINE=1
export SDL_VIDEO_FULLSCREEN_DISPLAY=0
export SDL_VIDEO_FULLSCREEN_HEAD=1
export FCEDIT=vim
export EDITOR=vim
export ALTERNATE_EDITOR=""
export MONO_GAC_PREFIX=/usr
export PATH=/usr/local/bin:~/bin:~/.cask/bin:~/.cabal/bin:$PATH

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

# Setup zsh-autosuggestions
source /home/eskimod/.antigen/repos/https-COLON--SLASH--SLASH-github.com-SLASH-tarruda-SLASH-zsh-autosuggestions.git/autosuggestions.zsh

# Enable autosuggestions automatically
zle-line-init() {
    zle autosuggest-start
}

zle -N zle-line-init

# use ctrl+t to toggle autosuggestions(hopefully this wont be needed as
# zsh-autosuggestions is designed to be unobtrusive)
bindkey '^T' autosuggest-toggle
[ -s "/home/eskimod/.kre/kvm/kvm.sh" ] && . "/home/eskimod/.kre/kvm/kvm.sh" # Load kvm
eval `dircolors ~/.dircolors.256-dark`
eval "$(hub alias -s)"
envoy
source <(envoy -p)
