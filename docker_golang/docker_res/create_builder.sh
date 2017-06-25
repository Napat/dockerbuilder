#!/bin/sh
# ex
# ./create_builder.sh

IMAGE_X8664_NAME="gobuilder_x8664_img"
DOCKERFILE_X8664_NAME="Dockerfile_builder_x8664"

docker build -t ${IMAGE_X8664_NAME} . -f ${DOCKERFILE_X8664_NAME}
docker images | grep ${IMAGE_X8664_NAME}
