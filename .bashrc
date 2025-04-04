#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1=' \W \$ '

HISTSIZE=15000
HISTFILESIZE=15000
HISTCONTROL=ignoreboth

complete -c man
complete -cf sudo
source /usr/share/doc/pkgfile/command-not-found.bash
source /usr/share/bash-completion/bash_completion
set -o noclobber
alias yt='mpv --ytdl --ytdl-format="bestvideo[height<=?1080]+bestaudio/best"'
alias yta='mpv --ytdl --ytdl-format="bestaudio"'
export PAGER=most
export TERM=xterm
export MOZ_USE_XINPUT2=1
alias scaledown='swaymsg output eDP-1 scale 1'
alias scaleup='swaymsg output eDP-1 scale 2.25'
alias pinball='scaleup; wine ./Games/MicrosoftGamesXP/Pinball/PINBALL.exe; scaledown'
