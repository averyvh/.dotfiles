
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1=' \W \$ '

HISTSIZE=15000
HISTFILESIZE=15000
HISTCONTROL=ignoreboth

complete -c man
complete -cf sudo
set -o noclobber
alias yt='mpv --ytdl --ytdl-format="bestvideo[height<=?1080]+bestaudio/best"'
alias yta='mpv --ytdl --ytdl-format="bestaudio"'
export PAGER=most
export TERM=xterm
export MOZ_USE_XINPUT2=1
