#!/usr/bin/env bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd $DIR/..

DOCKER_IMAGE=${DOCKER_IMAGE:-MealwormsBiz/neond-develop}
DOCKER_TAG=${DOCKER_TAG:-latest}

BUILD_DIR=${BUILD_DIR:-.}

rm docker/bin/*
mkdir docker/bin
cp $BUILD_DIR/src/neond docker/bin/
cp $BUILD_DIR/src/neon-cli docker/bin/
cp $BUILD_DIR/src/neon-tx docker/bin/
strip docker/bin/neond
strip docker/bin/neon-cli
strip docker/bin/neon-tx

docker build --pull -t $DOCKER_IMAGE:$DOCKER_TAG -f docker/Dockerfile docker
