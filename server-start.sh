#!/bin/bash

set -e

## Docker Compose file
DC_MONGO=docker-compose-mongo.yml

## Command line arguments
IS_DISABLE_MONGO_EXPRESS=${1:-false}
echo IS_DISABLE_MONGO_EXPRESS = ${IS_DISABLE_MONGO_EXPRESS}


## Run Process
docker-compose -f $DC_MONGO down
docker-compose -f $DC_MONGO up -d

if ${IS_DISABLE_MONGO_EXPRESS}; then
    docker-compose -f $DC_MONGO stop mongo-express
fi
