# Brew path
export HOMEBREW_PREFIX="/opt/homebrew"
export HOMEBREW_CELLAR="/opt/homebrew/Cellar"
export HOMEBREW_REPOSITORY="/opt/homebrew"
fpath[1,0]="/opt/homebrew/share/zsh/site-functions"
export FPATH
eval "$(/usr/bin/env PATH_HELPER_ROOT="/opt/homebrew" /usr/libexec/path_helper -s)"
[ -z "${MANPATH-}" ] || export MANPATH=":${MANPATH#:}"
export INFOPATH="/opt/homebrew/share/info:${INFOPATH:-}"

# History
HISTFILE=$HOME/.zsh_history
HISTSIZE=1000
SAVEHIST=1000

# Git branch
setopt PROMPT_SUBST
autoload -Uz vcs_info
zstyle ":vcs_info:git:*" formats "%b"

precmd() {
    vcs_info
    [ -n "$vcs_info_msg_0_" ] && vcs_info_msg_0_+=" "
}

# Colors
export PS1=' %F{magenta}${vcs_info_msg_0_}%F{green}%. %F{yellow}: %f'
export PS2="%F{yellow}: %f"
export LSCOLORS="gxFxBxdxCxegedabagacad"

# Base aliases
alias oz="vim $HOME/.zshrc"
alias sz="source $HOME/.zshrc"
alias e="exit"
alias c="clear"
alias ls="ls -1 --color=auto"
alias ll="ls -l --color=auto"
alias la="ls -1a --color=auto"
alias grep="grep --color=auto"

# Utils aliases
alias open="xdg-open"
alias fetch-music='yt-dlp --cookies-from-browser firefox -x --audio-format mp3 --embed-thumbnail --add-metadata -o "/home/artyom/Music/%(playlist_title)s/%(title)s.%(ext)s"'

# Git aliases
alias gi="git init"
alias gs="git status -sbu"
alias gb="git branch"
alias gc="git checkout"
alias gcb="git checkout -b"
alias gm="git merge"
alias ga="git add"
alias gcm="git commit -m"
alias gpl="git pull"
alias gps="git push"
alias gst="git stash"
alias gstl="git stash list"
alias gl="git log --graph --oneline --decorate --all"
alias gd="git diff"

if [ "$(tty)" = "/dev/tty1" ] && [ -z "$HYPRLAND_INSTANCE_SIGNATURE" ]; then
    sleep 1
    exec start-hyprland
fi
