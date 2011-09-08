# Path to your oh-my-zsh configuration.
export ZSH=$HOME/.oh-my-zsh

# Set to the name theme to load.
# Look in ~/.oh-my-zsh/themes/
export ZSH_THEME="flazz"
#export ZSH_THEME="jreese"

#export ZSH_THEME="afowler"

# Set to this to use case-sensitive completion
# export CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# export DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# export DISABLE_LS_COLORS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(vi-mode git github git-flow)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
stty -ixon -ixoff
alias irssissh='ssh -L 1234:irc.freenode.net:6667 thenihilistx@clamham.com'
alias ssheecs='ssh mxs802@eecslinab.case.edu'
export TERM=xterm-256color
eval `dircolors ./dircolors.ansi-dark`
