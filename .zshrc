fpath=($fpath "$HOME/MyDotFiles/zfunctions")

ZSH=$HOME/.oh-my-zsh
ZSH_THEME="pure"
COMPLETION_WAITING_DOTS="true"

export PATH="$PATH:/usr/lib/go-1.9/bin"
export PATH="$PATH:$(go env GOPATH)/bin"
export GOPATH="$(go env GOPATH)"

# zsh-wakatime

plugins=(git)

source $ZSH/oh-my-zsh.sh

grep-edit () {
    gvim `grep $1 $2 -R --color=never | cut -d: -f1 | uniq` -p
}

mkcd () {
    mkdir -p "$@" && cd "$@"
}

alias f="cd ~/Dev/fizix/core; ./infra/start.sh"
alias ...='cd ../..'
alias ....='cd ../../..'
alias reloadenv='source ~/.zshrc'
alias isrunning='ps alx | grep'
alias killalllike='kill `isrunning $1 | cut -d" " -f 4`'
alias kapply='kubectl apply -f'
export PATH=$PATH:~/Apps/android-sdk/sdk/platform-tools

[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" # Load RVM function

alias prp='git pull --rebase && git push'

export PATH="$HOME/.yarn/bin:$PATH"

source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
