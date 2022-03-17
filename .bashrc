#!/bin/bash

[[ $- != *i* ]] && return

if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]]; then
    startx
fi

[ -r /usr/share/bash-completion/bash_completion ] && . /usr/share/bash-completion/bash_completion

if [[ ${EUID} == 0 ]] ; then
    export PS1='\[\033[0;31m\][\h \[\033[0;32m\]\W\[\033[0;31m\]]#\[\033[00m\] '
else
    export PS1='\[\033[0;32m\]\W »\[\033[00m\] '
fi

alias cp='cp -i'
alias df='df -h'
alias feh='feh -.'
alias fg=' fg'
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
        PROMPT_COMMAND='echo -ne "\033]0;"${PWD/#$HOME/\~}" - ST\007" && stty susp undef'
    ;;
    *)
        PROMPT_COMMAND='stty susp undef'
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
    ESPIDF=/opt/esp-idf              \
    HISTCONTROL=ignoreboth           \
    MANPAGER="less -R -Dd+g -Dd+r"   \
    PATH="$PATH:$HOME/dots/scripts/" \
    PS0='$(stty susp ^z)'            \
    TERMINAL=st

# hack
bind '"\C-z":"fg\015"'
