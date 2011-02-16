
# Alias Dev
# ---------

alias gvi='gvim'

alias modified='svn st | grep "^M"'

alias sfpba='./symfony propel:build --all-classes'

alias grep='grep --color=always'

svncolordiff () {
    # svn diff "${@}" | colordiff | less -R -E
    svn diff "${@}" | colordiff
}


grep-edit () {
    gvim `grep $1 $2 -R --color=never | cut -d: -f1 | uniq` -p
}

phptags () {
    ctags-exuberant -h ".php" -R                     \
        --exclude="\.svn"                            \
        --totals=yes                                 \
        --tag-relative=yes                           \
        --PHP-kinds=+cf                              \
        --regex-PHP='/abstract class ([^ ]*)/\1/c/'  \
        --regex-PHP='/interface ([^ ]*)/\1/c/'       \
        --regex-PHP='/(public |static |abstract |protected |private )+function ([^ (]*)/\2/f/'
}

# Alias réseaux
# -------------

alias nat_forward='echo 1 > /proc/sys/net/ipv4/ip_forward; iptables -t nat -A POSTROUTING -o eth0 -j MASQUERADE;'

share_eth_to_wlan () {
    echo "1" > /proc/sys/net/ipv4/ip_forward 
    iptables -A POSTROUTING -t nat -o eth1 -j MASQUERADE
}

connect_adhoc () {
    iwconfig eth1 essid "p02" mode ad-hoc channel 1
    ifconfig eth1 192.168.1.2
    route add default gw 192.168.1.1
    echo "search iup.univ-avignon.fr" > /etc/resolv.conf
    echo "nameserver 194.57.216.30"  >> /etc/resolv.conf
    echo "nameserver 195.83.163.60"  >> /etc/resolv.conf
    echo "nameserver 193.51.208.13"  >> /etc/resolv.conf
}

alias wol_avignon='wakeonlan -i rno-server.homeip.net 00:19:66:33:D3:FA'

alias ldap_tunnel='sudo ssh -L smtp.univ-avignon.fr:25:smtp.univ-avignon.fr:25 -L ldap.univ-avignon.fr:389:ldap.univ-avignon.fr:389 didrya@in.univ-avignon.fr'

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

# Alias Système
# -------------

alias isrunning='ps alx | grep'

alias killalllike='kill `isrunning $1 | cut -d" " -f 4`'

alias apt='sudo apt-get'
alias upgrade='sudo apt-get update && sudo apt-get dist-upgrade'

alias ebashrc='gvim ~/.bashrc'
alias reloadbashrc='source ~/.bashrc'
alias logwatch='watch --interval 1 tail -n 30'

alias untargz='tar -zxvf'
alias untarbz2='tar -jxvf'

alias apt-update='sudo apt-get update'
alias apt-upgrade='sudo apt-get upgrade'
alias apt-install='sudo apt-get install'
alias apt-search='sudo apt-cache search'

