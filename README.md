# Docker

<p align="center">Projeto destinado a estudos com docker </p>

  
## Comandos:
* docker ps: containers que estão ativos na minha maquina, rodando nesse exato momento.
* docker ps -a: containers da minha maquina, ativos ou inativos, que já rodaram algum dia.
* docker run -p 80:8080 {nome_do_container} : roda o container mapeando a porta. ( -p mapeia a porta )
* -d: salva o processo.
* -f: força o processo.
* rm: deleta o container.
* --it: modo iterativo.
* -v: monta um volume.

* docker exec {nome_do_container} ls : lista todos os diretorios de dentro do container
* docker exec {nome_do_container} bash: executa o bash e fica dentro do container


##Tudo que é gravado dentro do container é perdido ao deletar ele

## Trabalhando com imagens:

* docker images: lista todas as imagens
* docker rmi {nome_da_imagem} : deleta a imagem

## DockerFile:

Comando: 
* docker build -t {nome_do_usuario}/{nome_da_imagem} .  : para buildar o projeto
* docker run -it {nome_do_usuario}/{nome_da_imagem}  : para rodar a imagem
* -f : para saber qual dockerfile usar: ex: -f dockerfile.prod


No dockerfile:
* FROM: Nome da imagem e versão
* WORKDIR: Diretorio
* RUN: executar / comando
* COPY: Copiar do computador para um container
* ENTRYPOINT: Comando fixo
* CMD: Comando variável


## Network:

Tipos: brigde, Host, Overlay, Maclan, Nenhum

Mais utilizada: brigde, usa para um container se conectar facilmente com outro.
a host também é utilizada, com menos frequencia.

## Criar image node com arquivo do computador
docker run --rm -it -v $(pwd)/:/usr/src/app -p 3000:3000 node:15 bash

docker exec -it app bash - entrar no container

mysql -uroot -p - acessar banco mysql

## Utilizando docker-compose
docker compose up -d - subir o container






* docker-compose up : subir a aplicação
* docker-compose up -d : subir a aplicação sem travar o terminal
* docker-compose ps: lista os containers
* docker-compose up -d --build: rebuild o container, para caso de mudanças
* docker-compose down: para o serviço
