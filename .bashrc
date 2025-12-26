#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias yeet='yay -Rns'
alias update='yay -Syu'
#PS1='\W '


parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ \1/'
}


CYAN='\[\e[1;36m\]'
GREEN='\[\e[1;32m\]'
RESET='\[\e[0m\]'


export PS1="${CYAN} \w${GREEN}\$(parse_git_branch) ❯ ${RESET}"
