FROM node:hydrogen-buster
COPY graphserver.js .
COPY package.json .
COPY UScities.json .
RUN apt-get update && \
    apt-get install -y git && \
    apt-get upgrade -y && \
    npm install &&\
    
EXPOSE  4000
CMD node graphserver.js
