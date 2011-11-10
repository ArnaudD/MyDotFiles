
ZSH=$HOME/.oh-my-zsh
ZSH_THEME="steeef"
COMPLETION_WAITING_DOTS="true"

plugins=(git)

source $ZSH/oh-my-zsh.sh

grep-edit () {
    gvim `grep $1 $2 -R --color=never | cut -d: -f1 | uniq` -p
}

alias gvim='/Applications/mvim'
alias ...='cd ../..'
alias ....='cd ../../..'
alias reloadenv='source ~/.zshrc'
alias isrunning='ps alx | grep'
alias killalllike='kill `isrunning $1 | cut -d" " -f 4`'


