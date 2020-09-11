#!/bin/bash

DATABASE=$1
COLLECTION=$2
CURRENT_DATETIME=$(date +"%y-%m-%d")T$(date +"%H-%M-%S")
MONGO_USERNAME=$MONGO_INITDB_ROOT_USERNAME
MONGO_PASSWORD=$MONGO_INITDB_ROOT_PASSWORD
MONGO_AUTH_SOURCE=admin
FOLDER_NAME=${DATABASE}_${COLLECTION}_${CURRENT_DATETIME}

echo // Parameters
echo / DATABASE = $DATABASE
echo / CURRENT_DATETIME = $CURRENT_DATETIME
echo / MONGO_USERNAME=$MONGO_USERNAME
echo / MONGO_PASSWORD=$MONGO_PASSWORD
echo / MONGO_AUTH_SOURCE=$MONGO_AUTH_SOURCE
echo / FOLDER_NAME=$FOLDER_NAME
echo

if [ -z "$DATABASE" ]; then
  echo "ERROR: DATABASE (param#1) is undefined!"
  exit 1
fi

if [ -z "$COLLECTION" ]; then
  echo "ERROR: COLLECTION (param#2) is undefined!"
  exit 1
fi

mongodump \
  --username=$MONGO_USERNAME --password=$MONGO_PASSWORD --authenticationDatabase=$MONGO_AUTH_SOURCE \
  --db=$DATABASE --collection=$COLLECTION --out=$FOLDER_NAME --verbose

exit 0
