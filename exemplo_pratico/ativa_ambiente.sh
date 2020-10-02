#!/bin/bash

docker network create --subnet 172.100.0.0/24 db_network

docker run -d --name server_mysql --ip 172.100.0.100 --network db_network -e MYSQL_ROOT_PASSWORD=123qwe -e MYSQL_USER=notes-api -e MYSQL_PASSWORD=notes-api mysql

docker build -t node_server .

docker run -d --name server_node.js --ip 172.100.0.110 --network db_network node_server

docker network create --subnet 172.200.0.0/24 proxy_network

docker network connect --ip 172.200.0.200 proxy_network server_node.js

docker run -d --name server_nginx -p 80:80 --ip 172.200.0.100 --network proxy_network nginx

docker cp proxy.conf server_nginx:/etc/nginx/conf.d/default.conf

sleep 15

cat database_schema.sql | docker exec -i server_mysql mysql -u root -p123qwe

docker restart server_nginx
