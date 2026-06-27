set --global --export HOMEBREW_PREFIX "/opt/homebrew"
set --global --export HOMEBREW_CELLAR "/opt/homebrew/Cellar"
set --global --export HOMEBREW_REPOSITORY "/opt/homebrew"
fish_add_path --global --move --path "/opt/homebrew/bin" "/opt/homebrew/sbin"

if test -n "$MANPATH[1]"
    set --global --export MANPATH '' $MANPATH
end

if not contains "/opt/homebrew/share/info" $INFOPATH
    set --global --export INFOPATH "/opt/homebrew/share/info" $INFOPATH
end

set -gx EDITOR "nvim"

function fish_prompt
    set -l git_branch ""
    if git rev-parse --git-dir >/dev/null 2>&1
        set git_branch (git branch --show-current 2>/dev/null)
        if test -n "$git_branch"
            set git_branch (set_color magenta)"$git_branch "(set_color normal)
        end
    end
    set -l dir (pwd | sed "s|^$HOME|~|")
    set -l current_folder (basename $dir)

    echo -n -s " $git_branch" (set_color green)$current_folder (set_color yellow)" : "(set_color normal)
end

set -g fish_prompt_prompt_cmd (set_color yellow)": "(set_color normal)

set -g fish_color_valid_path --underline=off
set -U fish_greeting ""

set -gx LSCOLORS "gxFxBxdxCxegedabagacad"
set -gx LS_COLORS "di=1;34:ln=1;36:so=1;35:pi=33:ex=1;32:bd=1;33:cd=1;33:su=1;41:sg=1;46:tw=1;42:ow=1;43"

# Base aliases
alias oc="vim ~/.config/fish/config.fish"
alias sc="source ~/.config/fish/config.fish"
alias e="exit"
alias c="clear"
alias ls="ls -1 --color=auto"
alias ll="ls -l --color=auto"
alias la="ls -1a --color=auto"
alias grep="grep --color=auto"

# Utils
alias n="nvim"
alias fetch-music='yt-dlp -x --audio-format mp3 --embed-thumbnail --add-metadata -o "/Users/artyom/Music/Downloads/%(playlist_title)s/%(title)s.%(ext)s"'

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

function y
    set tmp (mktemp -t "yazi-cwd.XXXXXX")
    command yazi $argv --cwd-file="$tmp"
    if read -z cwd < "$tmp"; and [ "$cwd" != "$PWD" ]; and test -d "$cwd"
        builtin cd -- "$cwd"
    end
    command rm -f -- "$tmp"
end

