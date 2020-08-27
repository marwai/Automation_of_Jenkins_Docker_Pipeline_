#FROM ubuntu:16.04
#RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv D68FA50FEA312927
#RUN echo "deb https://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/3.2 multiverse" | tee /etc/apt/sources.list.d/mongodb-org-3.2.list


# Update 
#RUN apt-get update 
#RUN apt-get upgrade

# Install mongodb 
#RUN  apt-get install mongodb-org=3.2.20 -y

#RUN mkdir -p /data/db
#RUN chown -R mongodb:mongodb /data/db
#ADD mongodb.conf /etc/mongodb.conf
#ADD mongodb.pem /etc/ssl/certs/mongodb.pem

#VOLUME ["/data/db"]
#EXPOSE 27017
#EdockerNdockTRYPOINT ["/usr/bin/mongod", "--config", "/etc/mongodb.conf"]
#21
FROM mongo 

# 24 Run updates 
RUN apt-get update
RUN apt-get upgrade

# 28 Use root/example as user/password credentials
version: '3.1'

services:

  mongo:
    image: mongo
    restart: always

  mongo-express:
    image: mongo-express
    restart: always
    ports:
      - 27017:27017
