#!/bin/bash
# author: luoning
# date: 03/24/2015

build_mysql_devel(){
    yum -y install mysql-devel
    ln -s /usr/lib64/mysql/libmysqlclient_r.so.18 /usr/lib64/mysql/libmysqlclient_r.so
}

check_user
get_cur_dir
build_mysql_devel