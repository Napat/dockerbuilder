#!/bin/sh
# ex
# ./shipper_x8664.sh 

IMAGE_X8664_NAME="mygoapp_img"
DOCKERFILE_X8664_NAME="Dockerfile_shipper_x8664"
BUILD_DIR="${PWD}/../build"
TMP_DIR="${PWD}/tmp"

# NOTE
# TMP_DIR cannot contain '..' because: https://docs.docker.com/engine/reference/builder/
# The <src> path must be inside the context of the build; you cannot ADD ../something /something, because the first step of a docker build is to send the context directory (and subdirectories) to the docker daemon.

echo ${TMP_DIR}
mkdir -p ${TMP_DIR}
cp ../build/* ${TMP_DIR}
docker build -t ${IMAGE_X8664_NAME} . -f ${DOCKERFILE_X8664_NAME}
docker images | grep ${IMAGE_X8664_NAME}

