#!/bin/bash

docker exec palworld-server rcon-cli "save"

cp -rf ~/palworld/Pal/Saved/SaveGames ~/palsave/ 
git add . && git commit -m "Update auto" && git push origin main
