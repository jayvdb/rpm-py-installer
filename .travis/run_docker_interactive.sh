#!/bin/sh

set -ex

# fedora image needs "bash".
# CONTAINER_IMAGE=fedora:28
# CONTAINER_IMAGE=fedora:27
# CONTAINER_IMAGE=fedora:26
# CONTAINER_IMAGE=fedora:rawhide
# CONTAINER_IMAGE=centos:7
# CONTAINER_IMAGE=centos:6
# CONTAINER_IMAGE=ubuntu:trusty
CONTAINER_IMAGE=ubuntu:bionic

docker pull "docker.io/${CONTAINER_IMAGE}"
docker tag "docker.io/${CONTAINER_IMAGE}" "${CONTAINER_IMAGE}"

docker run -it --rm "${CONTAINER_IMAGE}" bash
