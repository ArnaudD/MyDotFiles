ZSH=$HOME/.oh-my-zsh
ZSH_THEME="steeef"
COMPLETION_WAITING_DOTS="true"

plugins=(git)

source $ZSH/oh-my-zsh.sh

grep-edit () {
    gvim `grep $1 $2 -R --color=never | cut -d: -f1 | uniq` -p
}

mkcd () {
    mkdir -p "$@" && cd "$@"
}

alias ...='cd ../..'
alias ....='cd ../../..'
alias reloadenv='source ~/.zshrc'
alias isrunning='ps alx | grep'
alias killalllike='kill `isrunning $1 | cut -d" " -f 4`'


[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" # Load RVM function
