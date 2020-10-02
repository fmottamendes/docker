# Comandos Docker
**docker search hello-word**
Pesquisa imagem "hello-word" no repositório de imagens

**docker pull busybox**
Baixa a imagem do repositório configurado.

**docker images**
Lista imagens baixadas.

**docker ps**
Lista containers em execução.

**docker ps (-a)**
Lista containers em execução ou não(-a).

**docker container ls (-a)**
Lista containers em execução ou não(-a).

**docker build -t \$nome_da_imagem:\$tag_da_imagem .**
Gera imagem a partir do Dockerfile

**docker commit id/nome_container $nome_imagem**
Gera imagem a partir do container(comita alterações do container em uma imagem)

**docker run hello-world**
Executa container apartir da imagem hello-world(baixa a imagem caso necessário).

**docker run -it busybox sh**
Executa shell sh apartir da imagem busybox em modo interativo e com tty (-it).

**docker run -it --name $nome_container busybox**
Executa e define o nome(--name) do container a partir da imagem busybox

**docker container rename $nome_container  $novo_nome_container**
#Renomeia container

**docker run -it -p $ip_acesso_permitido:$porta_no_host:$porta_no_container busybox**

**docker run --restart on-failure:3 --name $nome_container busybox**
Container reinicia em caso de falha(--restart on-failure:3 / 3 vezes)

**docker run --restart always --name $nome_container busybox**
Container reinicia em caso de falha(--restart always)

**docker run -d --link $nome_container_a_linkar:$alias $nome_container**
Cria link entre containers, reponde pelo alias no destino

**docker run -d -P --name $nome_container prakhar1989/static-site**
Executa container desatachado(-d), publica portas do container(-P) nomeia o container como static-site(--name)

**docker run --rm $nome_container**
Excuta container e remove após a execução (--rm).

**docker exec -it $nome_container $o_que_deve_ser_executado**
Executa algo em um container(em execução)

**docker diff $nome_container**
Diff entre a imagem original e o container(arquivos criados/alterados)

**docker logs $nome_container**
Log de atividades(execuções) no container

**docker port $nome_container**
Infos. de portas e mapeamentos do container

**docker rm 305297d7a235 ff0a5c3750b9**
Remove containers.

**docker container prune**
Remove containers parados.

**docker images**
Lista imagens baixadas.

**docker rmi $nome_da_imagem**
Remove, localmente, a imagem

**docker tag**
Altera tag do container

**docker stats**
Estatisticas de uso de recursos pelos containers

**docker top $nome_container**
Executa um "top" no container

**docker start/stop $nome_container**
Inicia/Para container(já criado)

**docker pause/unpause $nome_container**
Pausa/Despausa container

**docker inspect $nome_container**
Infos. do container

**docker kill $nome_container**
Mata containers

**docker attach $nome_container**
Conecta ao container(em execução
