#!/bin/bash

## Docker Compose file
DC_MONGO=docker-compose-mongo.yml
DC_APP=docker-compose-app-security.yml

docker-compose -f $DC_MONGO -f $DC_APP exec $1 $2
