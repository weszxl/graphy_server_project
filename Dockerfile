FROM node:18.20.7-alpine3.21
COPY graphserver.js .
COPY package.json .
COPY UScities.json .
RUN apt-get update && \
    apt-get install -y --no-install-recommends git && \
    apt-get upgrade -y && \ 
    
    npm install &&\
EXPOSE  4000
CMD node graphserver.js
