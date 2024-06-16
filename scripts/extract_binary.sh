#!/bin/sh
#
# Usage：
#     Run this script with a optional version param.

IMAGE=ghcr.io/athurg/memos:${1-main}
CONTAINER=$( docker run --rm -d ${IMAGE} 2>/dev/null )
docker cp ${CONTAINER}:/usr/local/memos/memos .
docker container rm -f $CONTAINER
