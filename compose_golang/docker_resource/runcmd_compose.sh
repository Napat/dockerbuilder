#!/bin/sh
# Example
# ./runcmd_compose.sh app01 go 'run main.go'

SERVICE_NAME="$1"
CMD_LINE="$2"

docker-compose run ${SERVICE_NAME} ${CMD_LINE}
