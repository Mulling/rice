#!/bin/bash

[[ $- != *i* ]] && return

if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]]; then
    startx
fi

[ -r /usr/share/bash-completion/bash_completion ] && . /usr/share/bash-completion/bash_completion

if [[ ${EUID} == 0 ]] ; then
    export PS1='\[\033[0;31m\][\h \[\033[0;32m\]\W\[\033[0;31m\]]#\[\033[00m\] '
else
    export PS1='\[\033[1;30m\]`[ \j -gt 0 ] && echo [\j]\ `\[\033[0;32m\]\W »\[\033[00m\] '
fi

alias cp='cp -i'
alias df='df -h'
alias feh='feh -.'
alias free='free -m'
alias grep='grep --color=auto'
alias idf='. /opt/esp-idf/export.sh'
alias la='ls -a'
alias ll='ls -lagh'
alias ls='ls --color=auto'
alias more=less
alias mu=mupdf
alias pingle='ping 8.8.8.8'
alias rm='rm -i'
alias vim=nvim
alias mpv='mpv --hwdec=auto'

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
    HISTIGNORE='fg'                  \
    LFS=/mnt/lfs                     \
    MANPAGER="less -R -Dd+g -Dd+r"   \
    PS0='$(stty susp ^z)'            \
    TERMINAL=st

# hack
bind '"\C-z":"fg\015"'
