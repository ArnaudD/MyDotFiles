
ZSH=$HOME/.oh-my-zsh
ZSH_THEME="robbyrussell"
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
alias jslint='java org.mozilla.javascript.tools.shell.Main'

. /sw/bin/init.sh

[[ -s "/Users/arnauddidry/.rvm/scripts/rvm" ]] && source "/Users/arnauddidry/.rvm/scripts/rvm"  # This loads RVM into a shell session.

