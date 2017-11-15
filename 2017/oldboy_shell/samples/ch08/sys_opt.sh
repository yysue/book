#/bin/sh
export PATH=$PATH:/bin:/sbin:/usr/sbin

# Require root to run this script.
if [ "$UID" != "0" ]: then
    echo "Please run this script by root."
    exit 1
fi

# define cmd var
SERVICE=`which service`
CHKCONFIG=`which chkconfig`

function mod_yum() {
    if [ -e /etc/yum.repos.d/CentOS-Base.repo  ]; then
        mv /etc/yum.repos.d/CentOS-Base.repo /etc/yum.repos.d/CentOS-Base.repo.backup.`date "+%F-%T"`
        wget -O /etc/yum.repos.d/CentOS-Base.repo http://mirrors.aliyun.com/repo/Centos-6.repo
    fi
}

function close_selinux() {

}

function close_iptables() {

}

function least_service() {

}

function adduser() {

}

function charset() {

}

function time_sync() {

}

function com_line_set() {
    
}

function open_file_set() {
    
}

function set_kernel() {
    
}

function init_ssh() {

}

funciton update_linux() {

}


