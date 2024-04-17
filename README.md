# Comandos Docker
**Pesquisa imagem "hello-word" no repositório de imagens.**
```
docker search hello-word
```
**Baixa a imagem do repositório configurado.**
```
docker pull busybox
```
**Lista imagens baixadas.**
```
docker images
```
**Lista containers em execução.**
```
docker ps
```
**Lista containers em execução ou não(-a).**
```
docker ps (-a) / docker container ls (-a)
```
**Gera imagem a partir do Dockerfile.**
```
docker build -t \$nome_da_imagem:\$tag_da_imagem .
```
**Gera imagem a partir do container(comita alterações do container em uma imagem).**
```
docker commit id/nome_container $nome_imagem
```
**Executa container apartir da imagem hello-world(baixa a imagem caso necessário).**
```
docker run hello-world
```
**Executa shell sh apartir da imagem busybox em modo interativo e com tty (-it).**
```
docker run -it busybox sh
```
**Executa e define o nome(--name) do container a partir da imagem busybox.**
```
docker run -it --name $nome_container busybox
```
**Renomeia container.**
```
docker container rename $nome_container  $novo_nome_container
```
**Publica porta do container e associa a porta no host.**
```
docker run -it -p $porta_no_host:$porta_no_container busybox
```
**Publica porta do container e associa a porta no host(restringe ip ade acesso).**
```
docker run -it -p $ip_acesso_permitido:$porta_no_host:$porta_no_container busybox
```
**Container reinicia em caso de falha(on-failure:3 - 3 tentativas).**
```
docker run --restart (no|always|on-failure|on-failure:3|unless-stopped) --name $nome_container busybox
```
**Cria link entre containers, responde pelo alias no destino.**
```
docker run -d --link $nome_container_a_linkar:$alias $nome_container
```
**Executa container desatachado(-d), publica portas do container(-P) nomeia o container como static-site(--name).**
```
docker run -d -P --name $nome_container prakhar1989/static-site
```
**Excuta container e remove após a execução (--rm).**
```
docker run --rm $nome_container
```
**Executa algo em um container(em execução).**
```
docker exec -it $nome_container $o_que_deve_ser_executado
```
**Diff entre a imagem original e o container(arquivos criados/alterados).**
```
docker diff $nome_container
```
**Log de atividades(execuções) no container, (-f) em tempo real, (-t) com timestamp.**
```
docker logs -ft $nome_container
```
**Infos. de portas e mapeamentos do container.**
```
docker port $nome_container
```
**Remove containers.**
```
docker rm $name $container_id nginx ff0a5c3750b9
```
**Remove containers parados.**
```
**docker container prune**
```
**Remove, localmente, a imagem.**
```
docker rmi $nome_da_imagem
```
**Altera tag da imagem.**
```
docker tag $image_id|$name:$tag $new_name:$new_tag
```
**Estatisticas de uso de recursos pelos containers.**
```
docker stats | docker stats $nome_container
```
**Executa um "top" no container.**
```
docker top $nome_container
```
**Inicia/Para container(já criado).**
```
docker start/stop $nome_container
```
**Pausa/Despausa container.**
```
docker pause/unpause $nome_container
```
**Mata containers.**
```
docker kill $nome_container
```
**Infos. do container.**
```
docker inspect $nome_container
```
**Conecta ao container(em execução).**
```
docker attach $nome_container
```
**Exporta um container para um arquivo(tar).**
```
docker export $nome_container -o $arquivo
```
**Salva uma imagem em um arquivo(tar).**
```
docker save $image -o $arquivo
```
**Importa imagem de um arquivo(tar).**
```
docker import $arquivo
```
