[[ $- != *i* ]] && return

[ -r /usr/share/bash-completion/bash_completion ] && . /usr/share/bash-completion/bash_completion

export PS1='\[\033[0;32m\]\W »\[\033[00m\] '

alias cp="cp -i"
alias freq='watch -n 1 grep \"cpu MHz\" /proc/cpuinfo'
alias df='df -h'
alias free='free -m'
alias grep='grep --color=auto'
alias la='ls -a'
alias ll='ls -lag --human-readable'
alias ls='ls --color=auto'
alias more=less
alias rm='rm -i'
alias vim=nvim

case $TERM in
    st-256color)
        PROMPT_COMMAND='echo -ne "\033]0;"${PWD/#$HOME/\~}" - ST\007"'
    ;;
esac

xhost +local:root > /dev/null 2>&1

shopt -s           \
    checkwinsize   \
    expand_aliases \
    histappend

export                                   \
    BROWSER=brave                        \
    EDITOR=vim                           \
    HISTCONTROL=ignoreboth               \
    MANPAGER="less -R -Dd+g -Du+b -Dd+r" \
    TERMINAL=st
