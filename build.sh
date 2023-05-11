#!/bin/sh

VERSION=$(cat VERSION)

unset TMPDIR
podman build --build-arg=VERSION=$VERSION -t wardwouts/novnc -t wardwouts/novnc:v$VERSION .
