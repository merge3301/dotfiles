#!/bin/bash

# Paths
DEFAULT_PATH="/usr/local/bin:/usr/bin:/bin:/usr/local/sbin:/usr/sbin:/sbin:/opt/bin:/opt/local/bin"
export PATH="$DEFAULT_PATH"

# History
HISTFILE=$HOME/.bash_history
HISTSIZE=1000
SAVEHIST=1000

PS1=' \[\e[32m\]\W \[\e[33m\]: \[\e[0m\]'
PS2="\[\e[33m\]: \[\e[0m\]"

# Colors
export LSCOLORS="gxFxBxdxCxegedabagacad"

# Alias
alias c="clear"
alias e="exit"
alias ls="ls --color=auto"
alias ll="ls -l --color=auto"
alias la="ls -a --color=auto"
alias grep="grep --color=auto"

# Git alias
alias gi="git init"
alias gs="git status -sbu"
alias gb="git branch"
alias gc="git checkout"
alias gcb="git checkout -b"
alias gm="git merge"
alias ga="git add ."
alias gcm="git commit -m"
alias gpl="git pull"
alias gps="git push"
alias gst="git stash"
alias gstl="git stash list"
alias gl="git log --graph --oneline --decorate --all"
alias gd="git diff"
