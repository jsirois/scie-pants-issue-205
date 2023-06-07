#!/usr/bin/env bash

log() {
  echo >&2 "$@"
}

log "Launching services..."

docker-compose up -d

log 'When complete, run `fly -t tutorial login -c http://localhost:8080 -u test -p test`'

