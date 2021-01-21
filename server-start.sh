#!/bin/bash

## Command line arguments
IS_PRODUCTION=${1:-false}

## Print command line arguments
echo "/ Command line argument"
echo "1: IS_PRODUCTION=$IS_PRODUCTION"
echo

## Run Process
docker-compose down
docker-compose up -d
echo
echo

echo "##############################################"
if ${IS_PRODUCTION}; then
  echo "###   Server started in production mode.   ###"
else
  echo "###   Server started in development mode.  ###"
fi
echo "##############################################"

docker-compose ps
