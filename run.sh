#!/bin/sh


#podman run -it -e REMOTE_HOST=192.168.86.135 -e REMOTE_PORT=5901 -e LISTEN_PORT=8082 -p 8080:8082 wardwouts/novnc
podman run -it -e REMOTE_HOST=192.168.86.135 -e REMOTE_PORT=5901 wardwouts/novnc
