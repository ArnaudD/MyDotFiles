
ZSH=$HOME/.oh-my-zsh
ZSH_THEME="steeef"
COMPLETION_WAITING_DOTS="true"

plugins=(git)

grep-edit () {
    gvim `grep $1 $2 -R --color=never | cut -d: -f1 | uniq` -p
}

alias ...='cd ../..'
alias ....='cd ../../..'
alias reloadenv='source ~/.zshrc'
alias isrunning='ps alx | grep'
alias killalllike='kill `isrunning $1 | cut -d" " -f 4`'

# private aliases (non versionned)
if [ -f ~/.bash_private_aliases ]; then
    . ~/.bash_private_aliases
fi

[[ -s "/usr/local/rvm/scripts/rvm" ]] && . "/usr/local/rvm/scripts/rvm" 

source $ZSH/oh-my-zsh.sh
