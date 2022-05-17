#!/bin/bash
#echo "Sync path using Git with GitHub"

TODAY=$(date +"%F %H:%M:%S")
COMPUTER_NAME=$(uname -n)
COMMIT="sync date: $TODAY - $COMPUTER_NAME"

cd ..
git pull 

git add . 
git commit -m "sync date: $TODAY"

git push 
