#!/bin/bash


if [[ $# -eq 0 ]] ; then
    name='servidor_web'
else
    name=$1
fi

docker stop $name
docker ps
docker rm $name
docker ps -a
