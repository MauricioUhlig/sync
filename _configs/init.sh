#!/bin/zsh

# iniciando GIT 
git init 
git branch -M main
git remote add origin https://github.com/MauricioUhlig/sync.git
git push -u origin main

# Tornando o Sync executavel
FOLDER=$(pwd)/sync.sh
chmod u+x $FOLDER

# Criando Job de sync 
(crontab -l && echo "*/1 * * * * sh $FOLDER") | crontab -
## Versão com log 
# (crontab -l && echo "*/1 * * * * sh $FOLDER >> /home/Mauricio/Documents/sync/.logs/logs.txt 2>&1") | crontab -
