alias gvi='gvim'

alias clean_azureus='rm ~/.azureus/torrents ~/.azureus/active/ ~/.azureus/shares/ ~/.azureus/tmp/ ~/.azureus/logs ~/.azureus/dht -rf ~/.azureus/downloads.config* ~/.azureus/hs_err_pid*'

alias untargz='tar -zxvf'
alias untarbz2='tar -jxvf'
alias grep='grep --color=always'

alias nat_forward='echo 1 > /proc/sys/net/ipv4/ip_forward; iptables -t nat -A POSTROUTING -o eth0 -j MASQUERADE;'

svncolordiff () {
    # svn diff "${@}" | colordiff | less -R -E
    svn diff "${@}" | colordiff
}

alias xulmms='/media/data/dev/xulrunner-1.8.0.10/dist/bin/xulrunner /media/data/dev/xulmms/application.ini'

ssh_home='ssh arnaud@home.didry.info'

alias wol_avignon='wakeonlan -i rno-server.homeip.net 00:19:66:33:D3:FA'

alias sfpba='./symfony propel:build --all-classes'

alias apt='sudo apt-get'
alias upgrade='sudo apt-get update && sudo apt-get dist-upgrade'

alias reloadbashrc='source ~/.bashrc'
alias logwatch='watch --interval 1 tail -n 30'
alias appcfg='/media/data/apps/google_appengine/appcfg.py'
alias dev_appserver='/media/data/apps/google_appengine/dev_appserver.py'

alias modified='svn st | grep "^M"'

grep-edit () {
    gvim `grep $1 $2 -R --color=never | cut -d: -f1 | uniq` -p
}

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

alias ls='ls --color=auto'
alias ll='ls -lh --color=auto'
alias lla='ls -lAh --color=auto'
alias la='ls -Ah --color=auto'
alias l='ls -CFh --color=auto'

alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'

alias isrunning='ps alx | grep'


alias killalllike='kill `isrunning $1 | cut -d" " -f 4`'

mkcd () { if [ $# != 1 ]; then echo "Erreur d'argument" ; fi ; mkdir $1 ; cd $1 ; }

alias vim_sources='gvim *.c* *.h* -p'

alias ebashrc='gvim ~/.bashrc'
alias viewlog='gvim /var/log/auth.log'

alias sshiup='ssh uapv62073@in-etd.univ-avignon.fr'
#alias sshiupfw='ssh -N -f -L 2222:projets-gmi:22 uapv62073@in-etd.univ-avignon.fr'
alias sshiupfwgrumly='ssh -L 8888:grumly:80 uapv62073@in-etd.univ-avignon.fr'
alias sshserver='ssh arnaud@rno-server'

alias sshmesresas='ssh root@ns355429.ovh.net'


