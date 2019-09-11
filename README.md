# docker
Ambiente docker

bash -x ativa_ambiente.sh

Cria 2 redes(db_network - proxy_network)
Cria 3 Containers Docker(nginx - node.js - MySQL)

http://x.x.x.x:80  <---->  NGINX  <---->  172.200.0.0/24  <---->  NODE.JS  <---->  172.100.0.0/24  <---->  MySQL
