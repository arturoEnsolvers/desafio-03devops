#!/bin/bash


if [[ $# -eq 0 ]] ; then
    username='user'
else
    username=$1
fi

touch Dockerfile

echo "FROM node:16" >> Dockerfile
echo "WORKDIR /usr/src/app" >> Dockerfile
echo "COPY ./hello-bootcamp/package*.json ./" >> Dockerfile
echo "RUN npm install" >> Dockerfile
echo "COPY ./hello-bootcamp/ ." >> Dockerfile
echo "EXPOSE 4000" >> Dockerfile
echo "CMD [ "node", "server.js" ]" >> Dockerfile

touch .dockerignore

echo "node_modules" >> .dockerignore
echo "npm-debug.log" >> .dockerignore

sudo docker build -t $username/node-web-app .
sudo docker run -p 4000:4000 -d $username/node-web-app

