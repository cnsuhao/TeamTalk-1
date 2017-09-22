#!/bin/bash
# author: amirline

#修改im_server/conf中的配置文件
#只适用于所有服务都部署在一台机器上。

FILE_SERVER_CONF=fileserver.conf
LOGIN_SERVER_CONF=loginserver.conf
MSG_SERVER_CONF=msgserver.conf
ROUTE_SERVER_CONF=routeserver.conf
MSFS_SERVER_CONF=msfs.conf
HTTP_MSG_SERVER_CONF=httpmsgserver.conf
PUSH_SERVER_CONF=pushserver.conf
DB_PROXY_SERVER_CONF=dbproxyserver.conf


echo The server ip: $1
sed -i "s/#.#.#.#/$1/g"  ./im_server/conf/$FILE_SERVER_CONF
sed -i "s/#.#.#.#/$1/g"  ./im_server/conf/$LOGIN_SERVER_CONF
sed -i "s/#.#.#.#/$1/g"  ./im_server/conf/$MSG_SERVER_CONF
sed -i "s/#.#.#.#/$1/g"  ./im_server/conf/$ROUTE_SERVER_CONF
sed -i "s/#.#.#.#/$1/g"  ./im_server/conf/$MSFS_SERVER_CONF
sed -i "s/#.#.#.#/$1/g"  ./im_server/conf/$HTTP_MSG_SERVER_CONF
sed -i "s/#.#.#.#/$1/g"  ./im_server/conf/$PUSH_SERVER_CONF
sed -i "s/#.#.#.#/$1/g"  ./im_server/conf/$DB_PROXY_SERVER_CONF