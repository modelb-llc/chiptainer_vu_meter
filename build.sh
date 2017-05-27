#!/bin/sh

CONTAINER_IMAGE=${CONTAINER_IMAGE:-modelb/chiptainer_vu_meter}

docker build --no-cache=true -t "${CONTAINER_IMAGE}" .
