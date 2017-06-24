#!/bin/sh

RM_PATTERN="$1"

docker ps -a | grep ${RM_PATTERN} | awk '{print $1}' | xargs --no-run-if-empty docker rm -f
#If no awk then 
#docker ps -a | grep ${RM_PATTERN} | cut -d ' ' -f 1 | xargs --no-run-if-empty docker rm -f