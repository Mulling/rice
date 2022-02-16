#!/bin/bash

[[ $- != *i* ]] && return

if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]]; then
    startx
fi

[ -r /usr/share/bash-completion/bash_completion ] && . /usr/share/bash-completion/bash_completion

export PS1='\[\033[0;32m\]\W »\[\033[00m\] '

alias cp='cp -i'
alias df='df -h'
alias feh='feh -.'
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

export                               \
    BROWSER=brave                    \
    EDITOR=nvim                      \
    HISTCONTROL=ignoreboth           \
    MANPAGER="less -R -Dd+g -Dd+r"   \
    PATH="$PATH:$HOME/dots/scripts/" \
    TERMINAL=st
