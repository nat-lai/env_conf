HISTSIZE=10000
SAVEHIST=20000

alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

alias cls='clear'

alias cp='cp -iR'
alias mv='mv -i'
alias rm='rm -iR'

alias telnet='telnet -7'
alias screen='screen -D -R'
alias less='less -r'
alias tmux='tmux -2'

export GOPATH=$HOME/.golang
export PATH=$HOME/bin:$GOPATH/bin:$PATH
export EDITOR=vim

export LESS_TERMCAP_so=$'\e[1;38;5;255m\e[48;5;30m'
export LESS_TERMCAP_se=$'\e[0m'
export LESS_TERMCAP_us=$'\e[4;38;5;208m'
export LESS_TERMCAP_ue=$'\e[0m'
export LESS_TERMCAP_mb=$'\e[1;38;5;77m'
export LESS_TERMCAP_md=$'\e[1;38;5;77m'
export LESS_TERMCAP_me=$'\e[0m'
