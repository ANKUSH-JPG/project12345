#!/bin/sh


docker run -d -p 9000:9000 -v /var/run/docker.sock:/var/run/docker.sock --name portainerOS portainer/portainer

docker run -td --name ubuntuOS ubuntu:latest
