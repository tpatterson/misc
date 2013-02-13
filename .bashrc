# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
[ -z "$PS1" ] && return

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(lesspipe)"

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "$debian_chroot" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# Comment in the above and uncomment this below for a color prompt
#PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '

# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
    PROMPT_COMMAND='echo -ne "\033]0;(\t)${USER}: ${PWD/$HOME/~}\007"'
    ;;
*)
    ;;
esac

alias ls='ls -G'

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
fi

#export PS1='\[\033[1;33m\][\u@\h \W]\$\[\033[1;37m\] '
export PS1='\[\033[1;33m\][\A \u \W]\$\[\033[1;37m\] '

alias vi='vim "+set textwidth=0"'
alias vim='vim "+set textwidth=0"'

alias fabeverything='fab do_metadeb; fab do_pythonlibs; fab pip; fab restart'
alias fb='fab restart'


# don't put duplicate lines in the history. See bash(1) for more options
export HISTCONTROL=ignoredups
# ... and ignore same sucessive entries.
export HISTCONTROL=ignoreboth
export HISTSIZE=10000000
export HISTFILESIZE=10000000
# write to the history after every command. 
# keeps terminals from loosing their histories.
export PROMPT_COMMAND='history -a'

export PATH="/usr/local/share/python:$PATH"


if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

alias vim='mvim -v'
