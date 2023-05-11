#!/bin/sh

VERSION=$(cat VERSION)

podman push wardwouts/novnc:latest
podman push wardwouts/novnc:v$VERSION
