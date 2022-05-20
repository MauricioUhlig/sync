#!/bin/bash
#Borrowed from anacron
SHELL=/bin/sh
PATH=/usr/local/sbin:/usr/local/bin:/sbin:/bin:/usr/sbin:/usr/bin
#End borrowed from anacron
#echo "Sync path using Git with GitHub"

TODAY=$(date +"%F %H:%M:%S")
COMPUTER_NAME=$(uname -n)
COMMIT="sync date: $TODAY - $COMPUTER_NAME"

export GIT_SSH_COMMAND="ssh -i /home/ubuntu/src/id_rsa"
cd /home/Mauricio/Documents/sync
git pull origin main

git add . 
git commit -m "sync date: $TODAY"

git push origin main 

# End