#!/bin/bash
docker stop palworld-server
rm -rf ~/palworld/Pal/Saved/SaveGames
cp -rf ~/palsave/SaveGames ~/palworld/Pal/Saved/
docker restart palworld-server
