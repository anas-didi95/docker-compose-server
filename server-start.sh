#!/bin/bash

## Command line arguments
IS_PRODUCTION=${1:-false}

## Print command line arguments
echo / Command line argument
echo 1: IS_PRODUCTION=$IS_PRODUCTION
echo

## Run Process
docker-compose down
docker-compose up -d

if ${IS_PRODUCTION}; then
fi

docker-compose ps
