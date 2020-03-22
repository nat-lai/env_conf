# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=10000
HISTFILESIZE=20000

alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

alias cls='clear'

alias cp='cp -iR'
alias mv='mv -i'
alias rm='rm -iR'

alias telnet='telnet -8'
alias screen='screen -D -R'
alias less='less -r'
alias tmux='tmux -2'

set -o vi

export GOPATH=$HOME/.golang
export PATH=$HOME/bin:$GOPATH/bin:$PATH
export EDITOR=vim

#PS1="\[\e[37;42;1m\]\u\[\e[37;40;1m\]@\[\e[37;44;1m\]\h\[\e[37;40;1m\]:\[\e[36;40;1m\]\W\[\e[37;40;1m\]>\[\e[37;40;0m\]\[\e[33;40;1m\] \$\[\e[37;40;0m\] "
#PS1="\[\e[37;1m\]\[\e[48;5;46m\]\u\[\e[37;40;1m\]@\[\e[37;1m\]\[\e[48;5;99m\]\h\[\e[37;40;1m\]:\[\e[36;40;1m\]\W\[\e[37;40;1m\]>\[\e[40m\]\[\e[38;5;229;1m\] \$\[\e[37;40;0m\] "
#PS1="\[\e[37;1m\]\[\e[48;5;46m\]\u\[\e[0m\]\[\e[37;1m\]@\[\e[37;1m\]\[\e[48;5;99m\]\h\[\e[0m\]\[\e[37;1m\]:\[\e[36;1m\]\W\[\e[37;1m\]>\[\e[38;5;229;1m\] \$\[\e[0m\] "
#PS1="\[\ek\e\134\]\[\e[37;1m\]\[\e[48;5;46m\]\u\[\e[37;40;1m\]@\[\e[37;1m\]\[\e[48;5;99m\]\h\[\e[37;40;1m\]:\[\e[36;40;1m\]\W\[\e[37;40;1m\]>\[\e[40m\]\[\e[38;5;229;1m\] \$\[\e[37;40;0m\] "
#PS1="\[\e[0m\]\[\e[1;38;5;141m\]\u\[\e[1;38;5;11m\]@\[\e[1;38;5;10m\]\h \[\e[1;38;5;11m\][\[\e[1;38;5;12m\]\W\[\e[1;38;5;11m\]] \[\e[1;38;5;11m\]\$\[\e[0m\] "
PS1="\[\e[0m\]\[\e[1;38;5;38m\]\u\[\e[1;38;5;202m\]@\[\e[1;38;5;77m\]\h\[\e[1;38;5;202m\]|\[\e[1;38;5;148m\]\W\[\e[1;38;5;202m\]|\[\e[1;38;5;229m\] \$\[\e[0m\] "
# PS1="\u@\h \W $ "
export PS1

export LESS_TERMCAP_so=$'\e[1;38;5;255m\e[48;5;30m'
export LESS_TERMCAP_se=$'\e[0m'
export LESS_TERMCAP_us=$'\e[4;38;5;208m'
export LESS_TERMCAP_ue=$'\e[0m'
export LESS_TERMCAP_mb=$'\e[1;38;5;77m'
export LESS_TERMCAP_md=$'\e[1;38;5;77m'
export LESS_TERMCAP_me=$'\e[0m'
