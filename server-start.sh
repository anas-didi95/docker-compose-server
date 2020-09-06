#!/bin/bash

## Docker Compose file
DC_MONGO=docker-compose-mongo.yml
DC_APP=docker-compose-app-security.yml

echo $DC_APP

## Command line arguments
IS_DISABLE_MONGO_EXPRESS=${1:-false}
echo IS_DISABLE_MONGO_EXPRESS = ${IS_DISABLE_MONGO_EXPRESS}

## Run Process
docker-compose -f $DC_MONGO -f $DC_APP down
docker-compose -f $DC_MONGO -f $DC_APP build
docker-compose -f $DC_MONGO -f $DC_APP up -d

if ${IS_DISABLE_MONGO_EXPRESS}; then
    docker-compose -f $DC_MONGO -f $DC_APP stop mongo-express
fi
