#! /bin/bash


## CLEAR ALL DATA
sudo rm -rf /volume


# EVENTSTORE
sudo mkdir -p /volume/eventstore/logs
sudo mkdir -p /volume/eventstore/data
sudo mkdir -p /volume/eventstore/index
sudo mkdir -p /volume/eventstore/certs

sudo chown $USER -R /volume/
# sudo chown 1001 -R /volume/mongodb  # https://hub.docker.com/_/mongo


git submodule update --remote

docker-compose -f docker-compose.yml  down

docker-compose -f docker-compose.yml  up --build $1 


