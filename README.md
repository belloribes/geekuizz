# Geekuizz

Um simples quiz em php, que diz que série de TV você é baseado em como você age em algumas situações do dia-a-dia.

## Tecnologias
- Laravel 5.5
- Bootstrap
- jQuery
- MySql

## VM
- Ubuntu 16.04 LTS (Xenial Xerus)
- Vim, Git, Curl, etc.
- Apache
- PHP 7.1 with some extensions
- MySQL 5.7
- Node.js 8 with NPM
- RabbitMQ
- Redis
- Composer
- phpMyAdmin

## Requisitos
- [Vagrant](https://www.vagrantup.com/downloads.html)
- Plugin vagrant-vbguest (``vagrant plugin install vagrant-vbguest``)

## Instalação

- Clone este repositório dentro de seu diretório de projetos
- Execute ``vagrant up`` no terminal dentro da raíz do projeto
```sh
$ cd geekuizz
$ vagrant up
``` 
- Após concluir a instalação da VM, execute ``composer install`` dentro do diretório da aplicação 
```sh
$ vagrant ssh
$ cd /var/www/app/quiz
$ composer install
``` 
- Copie o arquivo  ``.env`` do diretório sample na raíz para o diretório da aplicação ``geekuizz/public/quiz``

- Adicione estas linhas em seu arquivo de hosts:
````
192.168.11.11 app.local
192.168.11.11 phpmyadmin.local
````
## Como Acessar

- Url da aplicação ``http://app.local/quiz/public`` 
- Url para acessar o banco de dados ``http://phpmyadmin.local/`` (username e password são 'root')
