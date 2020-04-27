source "$HOME/.zplug/init.zsh"

zplug "plugins/git", from:oh-my-zsh
zplug "plugins/rsync", from:oh-my-zsh
zplug "plugins/command-not-found", from:oh-my-zsh
zplug "plugins/tmux", from:oh-my-zsh
zplug "plugins/history", from:oh-my-zsh
zplug "plugins/vi-mode", from:oh-my-zsh
zplug "petervanderdoes/git-flow-completion"
zplug "zlsun/solarized-man"
zplug "zsh-users/zsh-completions"
zplug "zsh-users/zsh-autosuggestions"
zplug "zsh-users/zsh-syntax-highlighting"
zplug "zdharma/zsh-diff-so-fancy"

#zplug "themes/flazz", from:oh-my-zsh, as:theme
zplug "PhilsLab/abbr-zsh-theme", as:theme
# Install plugins if there are plugins that have not been installed
if ! zplug check --verbose; then
  printf "Install? [y/N]: "
  if read -q; then
    echo; zplug install
  fi
fi

zplug load --verbose
#zplug load

[ -e "{$HOME}/.zsh_aliases" ] && source "${HOME}/.zsh_aliases"
[ -e "{$HOME}/.zshrc_local" ] && source "${HOME}/.zshrc_local"

### CONFIG ###

# ZSH history
setopt append_history
setopt hist_expire_dups_first
setopt hist_fcntl_lock
setopt hist_ignore_all_dups
setopt hist_lex_words
setopt hist_reduce_blanks
setopt hist_save_no_dups
setopt share_history

export CLICOLOR=1
export BLOCK_SIZE=human-readable # https://www.gnu.org/software/coreutils/manual/html_node/Block-size.html
export HISTSIZE=11000
export SAVEHIST=10000
export HISTFILE=~/.zsh_history

export DEFAULT_USER="adam"
export DISABLE_AUTO_TITLE=true
export DISABLE_CORRECTION=true
#export DISABLE_UNTRACKED_FILES_DIRTY=true # Improves repo status check time.
export DISABLE_UPDATE_PROMPT=true
export EDITOR='nvim'
export FZF_DEFAULT_COMMAND='rg --files --hidden' # Use ripgrep as the default source for fzf
export FZF_DEFAULT_OPTS='--multi'
export NOTIFY_COMMAND_COMPLETE_TIMEOUT=300
export UPDATE_ZSH_DAYS=1
export ZSH_PLUGINS_ALIAS_TIPS_TEXT='    '
export ZSH_CACHE_DIR=$ZSH/cache
export COMPOSE_HTTP_TIMEOUT=120


### AUTOSUGGESTIONS ###
if zplug check zsh-users/zsh-autosuggestions; then
  ZSH_AUTOSUGGEST_CLEAR_WIDGETS+=(history-substring-search-up history-substring-search-down) # Add history-substring-search-* widgets to list of widgets that clear the autosuggestion
  ZSH_AUTOSUGGEST_CLEAR_WIDGETS=("${(@)ZSH_AUTOSUGGEST_CLEAR_WIDGETS:#(up|down)-line-or-history}") # Remove *-line-or-history widgets from list of widgets that clear the autosuggestion to avoid conflict with history-substring-search-* widgets
fi


### KEY BINDINGS ###
KEYTIMEOUT=1 # Prevents key timeout lag.
bindkey -v

export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=10'
#export ZSH_AUTOSUGGEST_BUFFER_MAX_SIZE=20
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
export AWT_TOOLKIT=MToolkit
export VDPAU_DRIVER=nvidia
export TERM=xterm-24bit
export ANDROID_HOME=/mnt/raid/Android-SDK
export ASPNETCORE_Kestrel__Certificates__Default__Path="/home/eskimod/.dotnet/corefx/cryptography/x509stores/my/localhost.pfx"

alias yay='yay --builddir=/tmp/yay-eskimod --save'
alias ls='ls --color=auto'
alias grep='grep --color'
alias less='less -R'
alias emacs='emacsclient -c'
alias sshx='ssh -XC'
alias open='kde-open'
alias paczfsr='sudo pacman -R zfs-git zfs-utils-git spl-git spl-utils-git'
alias paczfsi='yaourt -S zfs-git --noconfirm && sudo zfs mount -a'

eval `dircolors ~/.dircolors.ansi-dark`
eval "$(hub alias -s)"
GPG_TTY=$(tty)
export GPG_TTY
eval $(keychain --eval -Q -q id_ed25519 id_rsa)
