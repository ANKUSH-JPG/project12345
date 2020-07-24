#!/bin/sh
docker run -td -p 3001:8080   -v "/root/DR:/home/coder/lamp" -v "/root/NJS:/home/coder/nodejs"  -u "$(id -u):$(id -g)" --name vscode codercom/code-server:latest   

sleep 3
echo "**********************************************************************"
docker cp vscode:/root/.config/code-server/config.yaml /root/freelancer/


cat /root/freelancer/config.yaml
echo "***********************************************************************"


