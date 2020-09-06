#!/bin/bash

## Command line arguments
IS_DISABLE_MONGO_EXPRESS=${1:-false}

## Print command line arguments
echo / Command line argument
echo 1: IS_DISABLE_MONGO_EXPRESS=$IS_DISABLE_MONGO_EXPRESS
echo

## Run Process
docker-compose down
docker-compose up -d

if ${IS_DISABLE_MONGO_EXPRESS}; then
    docker-compose stop mongo-express
fi
