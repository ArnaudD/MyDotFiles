
# Alias Dev
# ---------

alias ack='ack-grep'

alias grep='grep --color=always'

alias nginx-reload='ssh www-dev "/usr/sbin/nginx -s reload"'

alias drun='sudo docker exec -i -t $@'
alias dshell='sudo docker exec -i -t $1 bash'

# Alias de navigation
# -------------------

alias ls='ls --color=auto'
alias ll='ls -lh --color=auto'
alias lla='ls -lAh --color=auto'
alias la='ls -Ah --color=auto'
alias l='ls -CFh --color=auto'

alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'

mkcd () { if [ $# != 1 ]; then echo "Erreur d'argument" ; fi ; mkdir $1 ; cd $1 ; }

# move improved
# mvi *.jpeg *.jpg
autoload -U zmv
alias mvi='noglob zmv -W'

# Alias Système
# -------------

alias isrunning='ps alx | grep'

alias killalllike='kill $(ps -o pid -o command ax | grep "$1" | cut -c1-6)'

alias apt='sudo apt-get'
alias upgrade='sudo apt-get update && sudo apt-get dist-upgrade'

alias ebashrc='gvim ~/.bashrc'
alias reloadbashrc='source ~/.bashrc'

alias untargz='tar -zxvf'
alias untarbz2='tar -jxvf'

alias apt-update='sudo apt-get update'
alias apt-upgrade='sudo apt-get upgrade'
alias apt-install='sudo apt-get install'
alias apt-search='sudo apt-cache search'

