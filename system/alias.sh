#!bin/zsh
#
# By 13XeNuS37
#
# Alias Base

### MISC ###
alias setRsaKey="ssh-keygen -t rsa"
alias getRsaKey="cat ~/.ssh/id_rsa.pub"
alias getTime="uptime | awk '{print $3}'"


### EDIT ###
alias editCrons="EDITOR=gedit crontab -e"
alias editAlias="sudo geany $HOME/.scripts/system/./alias.sh"
alias editZSHrc="sudo geany $HOME/.zshrc"
alias editBASHrc="sudo geany $HOME/.bashrc"
alias editHTOPrc="sudo geany $HOME.config/htop/htoprc"
alias editTerminator="sudo geany $HOME.config/terminator/config"
alias editSSH="sudo geany $HOME/.ssh/known_hosts"
alias editConky="sudo geany $HOME/.conkyrc"
alias editHTTPDConf="sudo geany /etc/httpd/conf/httpd.conf"
alias editPASSWD="sudo geany /etc/passwd"
alias editPHPini="sudo geany /etc/php.ini"
alias editResolvConf="sudo geany /etc/resolv.conf"

### DEVEL ###
alias restartApache="sudo service httpd restart"
alias restartMemcache="sudo service memcached restart"
alias size="du -h --max-depth=0"
alias getVHOSTS="ls -llh /etc/httpd/sites-enabled/"
alias getHostname="cat /etc/hostname"
alias getHosts="cat /etc/hosts"

### SYSTEM ###
alias getRelease="cat /etc/fedora-release"
alias getOsVersion="cat /proc/version | awk '{print $3}'"
alias getKernelVersion="rpm -qa kernel |sort -V |tail -n 1"
alias goYumRepos="cd /etc/yum.repos.d/"


### SSH ###


### GIT ###


### LOG ###
