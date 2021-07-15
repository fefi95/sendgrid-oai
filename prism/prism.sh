#!/bin/bash
set -e

rm -rf prism && mkdir -p prism && cd prism
echo "Cloning tests branch"
git clone --depth 1 https://github.com/sendgrid/sendgrid-oai --branch tests .
cd prism

docker-compose build --parallel

if [ -z "$command" ]; then
  docker-compose up --force-recreate --abort-on-container-exit
else
  docker-compose run helper-runner "$command"
  docker-compose down
fi
