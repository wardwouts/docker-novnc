# Standalone NoVNC Container

This image is intended to run a small standalone server that can target either other machines on the same network or other Docker containers.

## Configuration

Two environment variables exist in the docker file for configuration REMOTE_HOST and REMOTE_PORT.

### Variables

**REMOTE_HOST** Host running a VNC Server to connect to - defaults to *localhost*
**REMOTE_PORT** Port that the VNC Server is listening on - defaults to *5900*
**LISTEN_PORT** Port that novnc gets served on - defaults to *8081*

## Usage

```
docker run -d -e REMOTE_HOST=192.168.86.135 -e REMOTE_PORT=5901 -p 8080:8081 wardwouts/novnc
```

## Code
The dockerfile and code can be found here:
https://github.com/wardwouts/docker-novnc
