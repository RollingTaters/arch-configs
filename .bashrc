#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

PATH="$HOME/scripts:$PATH"
export PATH

[ -f ~/.fzf.bash ] && source ~/.fzf.bash
(cat ~/.cache/wal/sequences &)
source ~/.cache/wal/colors.sh
export color0_alpha="#88${color0/'#'}"
