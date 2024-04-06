#!/bin/bash

docker exec palworld-server rcon-cli "save"

cd ~ && rm -rf ~/palsave && git clone --filter=tree:0 git@github.com:turler/palsave.git
cp -rf ~/palworld/Pal/Saved/SaveGames ~/palsave/ 
cd ~/palsave && git add . && git commit -m "Update auto" && git push origin main
