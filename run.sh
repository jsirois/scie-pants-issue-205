#!/usr/bin/env bash

log() {
  echo >&2 "$@"
}

log "Launching services..."

docker-compose up -d

log 'When complete, run `fly -t tutorial login -c http://localhost:8080 -u test -p test`.'
log 'Then set the pipeline with `fly -t tutorial set-pipeline -p build -c example.yml`.'
log 'You can then go to the UI (maybe unpause) and start a job.'
