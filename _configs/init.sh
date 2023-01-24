#!/bin/zsh

# clonando repositório 
# git clone https://github.com/{seu-repositorio}.git

# Tornando o Sync executavel
FOLDER=$(pwd)/sync.sh
chmod u+x $FOLDER

# Criando Job de sync 
(crontab -l && echo "*/1 * * * * sh $FOLDER") | crontab -
## Para habilitar, deve usar a versão abaixo
# (crontab -l && echo "*/1 * * * * sh $FOLDER >> $(pwd)/sync/.logs/logs.txt 2>&1") | crontab -
