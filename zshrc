source "$HOME/.antigen/antigen.zsh"
ZSH_AUTOSUGGESTION_HIGHLIGHT_STYLE='fg=148'
ZSH_AUTOSUGGEST_BUFFER_MAX_SIZE=20
#unset COMPLETION_WAITING_DOTS

antigen use oh-my-zsh
antigen bundle git
antigen bundle petervanderdoes/git-flow-completion
#antigen bundle extract
antigen bundle pip
antigen bundle rsync
antigen bundle python
antigen bundle command-not-found
antigen bundle tmux
antigen bundle history
antigen bundle vundle
antigen bundle zsh-users/zsh-completions
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-syntax-highlighting

#antigen theme xiong-chiamiov-plus
antigen theme flazz
#antigen bundle vi-mode
antigen apply

[ -e "{$HOME}/.zsh_aliases" ] && source "${HOME}/.zsh_aliases"
[ -e "{$HOME}/.zshrc_local" ] && source "${HOME}/.zshrc_local"

export NO_COLOR=1
export RUST_SRC_PATH=/usr/src/rust/src
export PULSE_LATENCY_MSEC=60
export TEMP=/tmp
export SOLARIZED=1
export POWERLINE=1
export SDL_VIDEO_FULLSCREEN_DISPLAY=0
export SDL_VIDEO_FULLSCREEN_HEAD=1
export FCEDIT="vim"
export EDITOR="vim"
export ALTERNATE_EDITOR=""
export MONO_GAC_PREFIX=/usr
export _JAVA_AWT_WM_NONREPARENTING=1
export _JAVA_OPTIONS='-Dawt.useSystemAAFontSettings=gasp'
export AWT_TOOLKIT=MToolkit
export VDPAU_DRIVER=nvidia

alias less='less -R'
alias tmux='TERM=screen-256color-bce tmux'
alias cvim='POWERLINE=0 SOLARIZED=0 vim'
alias semacs='sudoedit'
#alias emacs='TERM=xterm-256color emacsclient -c'
alias emacs='emacsclient -c'
alias sshx='ssh -XC'
alias sar='LANG=C sar'
alias open='gnome-open'
alias paczfsr='sudo pacman -R zfs-git zfs-utils-git spl-git spl-utils-git'
alias paczfsi='yaourt -S zfs-git --noconfirm && sudo zfs mount -a'
alias upgradey='sudo apt-get update && sudo apt-get -y upgrade'
alias upgrade='sudo apt-get update && sudo apt-get upgrade'

eval `dircolors ~/.dircolors.256-dark`
eval "$(hub alias -s)"
GPG_TTY=$(tty)
export GPG_TTY
eval $(keychain --eval -Q -q id_ed25519 id_rsa)

test -s "$HOME/.kiex/scripts/kiex" && source "$HOME/.kiex/scripts/kiex"
source /usr/share/nvm/init-nvm.sh
