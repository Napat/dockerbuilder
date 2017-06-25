#!/bin/sh

# ***** TODO: compile binary to <TOP_DIR>/build/

# still not work
# ex
# windows: expect should use ubuntu bash and connect docker in bash to windows's docker 
# 1. use ubuntu bash 
# 2. porting docker to bash: https://blog.jayway.com/2017/04/19/running-docker-on-bash-on-windows/
# 3. run this script
# ./build_x8664.sh (Resolve-Path .\..\).Path gobuilder_x8664_img gobuilder_x8664_con 'pwd'
#
# Linux ** not test
# ./build_x8664.sh ${PWD}/../ gobuilder_x8664_img gobuilder_x8664_con 'cd /mnt/workspace/ && mkdir -p build && go build -o ./build/goapp'
# ./build_x8664.sh ${PWD}/../ gobuilder_x8664_img gobuilder_x8664_con 'ls -al'
# ./build_x8664.sh ${PWD}/../ gobuilder_x8664_img gobuilder_x8664_con 'make all'

TOP_DIR="$1"
IMAGE_NAME="$2"
CONTAINER_NAME="$3"
CMD_LINE="$4"

# for git bash
docker run --rm --name ${CONTAINER_NAME} \
 -v ${TOP_DIR}:/go \
 -it ${IMAGE_NAME} \
 ${CMD_LINE}

sleep 1000
