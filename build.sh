#!/bin/sh

VERSION=$(cat VERSION)

docker build --build-arg=VERSION=$VERSION -t wardwouts/novnc -t wardwouts/novnc:v$VERSION .
