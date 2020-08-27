#!/bin/bash

# runs docker-compose up -detached
docker-compose up -d


# Exec goes into the container ID and run command
# docker ps -l give us the most recent container
# --format "{{.ID}} takes the recent ID into the execute command
winpty docker exec -it $(docker ps -l --format "{{.ID}}") node seeds/seed.js
