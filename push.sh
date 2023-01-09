#!/bin/sh

VERSION=$(cat VERSION)

docker push wardwouts/novnc:latest
docker push wardwouts/novnc:v$VERSION
