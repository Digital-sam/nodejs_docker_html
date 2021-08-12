
#FROM ubuntu



FROM node
MAINTAINER Olaposi
#RUN apt-get update

ENV MONGO_DB_USERNAME=admin \
    MONGO_DB_PWD=passwd

RUN mkdir -p /home/app
COPY . /home/app
CMD ["node", "home/app/server.js"]
