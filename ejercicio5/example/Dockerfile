FROM node:16
WORKDIR /usr/src/app
COPY ./hello-bootcamp/package*.json ./
RUN npm install
COPY ./hello-bootcamp/ .
EXPOSE 4000
CMD [ "node", "server.js" ]
