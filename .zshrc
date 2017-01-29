fpath=($fpath "$HOME/MyDotFiles/zfunctions")

ZSH=$HOME/.oh-my-zsh
ZSH_THEME="pure"
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

export PATH=$PATH:~/Apps/android-sdk/sdk/platform-tools

[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" # Load RVM function

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

alias prp='git pull --rebase && git push'

export PATH="$HOME/.yarn/bin:$PATH"
