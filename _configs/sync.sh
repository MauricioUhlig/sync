#!/bin/bash
#Borrowed from anacron
SHELL=/bin/sh
PATH=/usr/local/sbin:/usr/local/bin:/sbin:/bin:/usr/sbin:/usr/bin
#End borrowed from anacron
#echo "Sync path using Git with GitHub"

TODAY=$(date +"%F %H:%M:%S")
COMPUTER_NAME=$(uname -n)
COMMIT="sync date: $TODAY - $COMPUTER_NAME"

cd /home/Mauricio/Documents/sync
git pull origin main

git add . 
git commit -m "sync date: $TODAY"

git push origin main 

# End