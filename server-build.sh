#!/bin/bash

SERVICE=$1

echo "// Build service - $SERVICE"
echo

if [ -z "$SERVICE" ]; then
  echo "ERROR! SERVICE (param#1) is undefined"
  exit 1
fi

docker-compose build --no-cache $SERVICE

exit 0
