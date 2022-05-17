#!/bin/zsh
echo "Sync path using Git with GitHub"

TODAY=$(date +"%F %H:%m:%S")
COMPUTER_NAME=$(uname -n)
COMMIT="sync date: $TODAY - $COMPUTER_NAME"

echo $COMMIT

git pull 

git add . 
git commit -m "sync date: $TODAY"

git push 
