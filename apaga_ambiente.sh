docker stop server_nginx
docker stop server_node.js
docker stop server_mysql
docker container rm server_nginx
docker container rm server_node.js
docker container rm server_mysql
docker network rm db_network
docker network rm proxy_network
docker image rm node_server
