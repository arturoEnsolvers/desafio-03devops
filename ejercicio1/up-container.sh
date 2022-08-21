#!/bin/bash


if [[ $# -eq 0 ]] ; then
    name='servidor_web'
else
    name=$1
fi

docker run -d --name $name -p 8181:80 nginx
docker ps
docker images

