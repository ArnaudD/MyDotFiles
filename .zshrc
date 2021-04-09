fpath=($fpath "$HOME/MyDotFiles/zfunctions")
fpath+=$HOME/MyDotFiles/pure-zsh

ZSH=$HOME/.oh-my-zsh
ZSH_THEME=""

COMPLETION_WAITING_DOTS="true"

export ANDROID_HOME=$HOME/Android/Sdk
export ANDROID_SDK=$ANDROID_HOME
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools
export PATH=$PATH:~/Apps/android-sdk/sdk/platform-tools
export PATH="$HOME/.yarn/bin:$PATH"

export REACT_EDITOR=atom

# export PATH="$PATH:/usr/lib/go-1.9/bin"
# export PATH="$PATH:$(go env GOPATH)/bin"
# export GOPATH="$(go env GOPATH)"

# zsh-wakatime

plugins=(git)

source $ZSH/oh-my-zsh.sh

grep-edit () {
    gvim `grep $1 $2 -R --color=never | cut -d: -f1 | uniq` -p
}

mkcd () {
    mkdir -p "$@" && cd "$@"
}

alias kp='kubectl get pods | grep'
alias kl='kubectl logs'
alias f="cd ~/Dev/fizix/core; ./infra/start.sh"
alias ...='cd ../..'
alias ....='cd ../../..'
alias reloadenv='source ~/.zshrc'
alias isrunning='ps alx | grep'
alias killalllike='kill `isrunning $1 | cut -d" " -f 4`'
alias kapply='kubectl apply -f'

[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" # Load RVM function

alias prp='git pull --rebase && git push'


source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

autoload -U promptinit; promptinit
prompt pure
