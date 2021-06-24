# Enable Powerlevel10k instant prompt
#if [[ -r "${XDG_CACHE_HOME:-${HOME}/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
#  source "${XDG_CACHE_HOME:-${HOME}/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
#fi

ZINIT_HOME="${ZINIT_HOME:-${ZPLG_HOME:-${ZDOTDIR:-${HOME}}/.zinit}}"
ZINIT_BIN_DIR_NAME="${${ZINIT_BIN_DIR_NAME:-${ZPLG_BIN_DIR_NAME}}:-bin}"
### Added by Zinit's installer
if [[ ! -f "${ZINIT_HOME}/${ZINIT_BIN_DIR_NAME}/zinit.zsh" ]]; then
    print -P "%F{33}▓▒░ %F{220}Installing DHARMA Initiative Plugin Manager (zdharma/zinit)…%f"
    command mkdir -p "${ZINIT_HOME}" && command chmod g-rwX "${ZINIT_HOME}"
    command git clone https://github.com/zdharma/zinit "${ZINIT_HOME}/${ZINIT_BIN_DIR_NAME}" && \
        print -P "%F{33}▓▒░ %F{34}Installation successful.%f" || \
        print -P "%F{160}▓▒░ The clone has failed.%f"
fi
source "${ZINIT_HOME}/${ZINIT_BIN_DIR_NAME}/zinit.zsh"
autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit
### End of Zinit installer's chunk

##########################
# OMZ Libs and Plugins   #
##########################

# IMPORTANT:
# Ohmyzsh plugins and libs are loaded first as some these sets some defaults which are required later on.
# Otherwise something will look messed up
# ie. some settings help zsh-autosuggestions to clear after tab completion

setopt promptsubst

# Explanation:
# - Loading tmux first, to prevent jumps when tmux is loaded after .zshrc
# - History plugin is loaded early (as it has some defaults) to prevent empty history stack for other plugins
zinit lucid for \
    atinit"ZSH_TMUX_FIXTERM=true; ZSH_TMUX_AUTOSTART=true; ZSH_TMUX_AUTOCONNECT=true; ZSH_TMUX_UNICODE=true;" \
        OMZP::tmux \
    atinit"HIST_STAMPS=yyyy-mm-dd" \
        OMZL::history.zsh \

zinit wait lucid light-mode for \
    OMZL::clipboard.zsh \
    OMZL::compfix.zsh \
    OMZL::completion.zsh \
    OMZL::correction.zsh \
    OMZL::directories.zsh \
    OMZL::git.zsh \
    OMZL::grep.zsh \
    OMZL::spectrum.zsh \
    OMZL::termsupport.zsh \
    OMZP::archlinux \
    OMZP::colored-man-pages \
    OMZP::docker-compose \
    as"completion" \
        OMZP::docker/_docker \
    OMZP::dotnet \
    OMZP::extract \
    OMZP::fancy-ctrl-z \
    OMZP::fzf \
    OMZP::git \
    OMZP::github \
    OMZP::mosh \
    OMZP::npm \
    OMZP::rsync \
    OMZP::systemd \
    OMZP::yarn \

#####################
# PLUGINS           #
#####################

# IMPORTANT:
# These plugins should be loaded after ohmyzsh plugins

zinit wait lucid for \
    light-mode atinit"zpcompinit; zpcdreplay" \
        zdharma/fast-syntax-highlighting \
    light-mode atinit"ZSH_AUTOSUGGEST_BUFFER_MAX_SIZE=20" atload"_zsh_autosuggest_start" \
        zsh-users/zsh-autosuggestions \
    blockf atpull'zinit creinstall -q .' \
        zsh-users/zsh-completions \

#####################
# PROGRAMS          #
#####################

zinit wait"2" lucid for \
    light-mode as"program" pick"bin/git-dsf" \
        zdharma/zsh-diff-so-fancy \
    light-mode depth"1"\
        jeffreytse/zsh-vi-mode \

#####################
# THEMES            #
#####################

PS1="READY >"
zinit ice wait'!' lucid atload'source ~/.p10k.zsh; _p9k_precmd' nocd
zinit light romkatv/powerlevel10k

[ -e "{$HOME}/.zsh_aliases" ] && source "${HOME}/.zsh_aliases"
[ -e "{$HOME}/.zshrc_local" ] && source "${HOME}/.zshrc_local"

### CONFIG ###

# ZSH history
setopt append_history notify
#setopt hist_fcntl_lock
#setopt hist_ignore_all_dups
#setopt hist_lex_words
#setopt hist_reduce_blanks
#setopt hist_save_no_dups

export CLICOLOR=1
export BLOCK_SIZE=human-readable # https://www.gnu.org/software/coreutils/manual/html_node/Block-size.html

export DEFAULT_USER="eskimod"
export DISABLE_AUTO_TITLE=true
export DISABLE_CORRECTION=true
export DISABLE_UPDATE_PROMPT=true
export FZF_DEFAULT_COMMAND='rg --files --hidden' # Use ripgrep as the default source for fzf
export FZF_DEFAULT_OPTS='--multi'
export NOTIFY_COMMAND_COMPLETE_TIMEOUT=300
export UPDATE_ZSH_DAYS=1
export ZSH_PLUGINS_ALIAS_TIPS_TEXT='    '
export ZSH_CACHE_DIR=$ZSH/cache
export COMPOSE_HTTP_TIMEOUT=120

### KEY BINDINGS ###
KEYTIMEOUT=1 # Prevents key timeout lag.
#bindkey -v

export TEMP=/tmp
export _JAVA_OPTIONS='-Dawt.useSystemAAFontSettings=on -Dswing.aatext=true -Dswing.defaultlaf=com.sun.java.swing.plaf.gtk.GTKLookAndFeel'
export _JAVA_AWT_WM_NONREPARENTING=1
#export TERM=xterm-24bit

alias yay='yay --builddir=/tmp/yay-eskimod --save'
alias ls='ls --color=auto'
alias grep='grep --color'
alias less='less -R'
alias emacs='emacsclient -c'
alias sshx='ssh -XC'
alias open='kde-open5'
alias paczfsr='sudo pacman -R zfs-git zfs-utils-git spl-git spl-utils-git'
alias paczfsi='yaourt -S zfs-git --noconfirm && sudo zfs mount -a'
alias cadence='sudo docker run --network=host --rm ubercadence/cli:master'
alias vim='nvim'

#eval `dircolors ~/.dircolors.ansi-dark`
eval $(keychain --eval -Q -q id_ed25519 id_rsa)
GPG_TTY=$(tty)
export GPG_TTY
. /opt/asdf-vm/asdf.sh
source /usr/share/doc/find-the-command/ftc.zsh noprompt

