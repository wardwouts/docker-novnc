FROM alpine:3.17
LABEL maintainer=ward.wouts@gmail.com

ARG VERSION=0
ARG NOVNC_URL=https://github.com/novnc/noVNC/archive/refs/tags/v$VERSION.tar.gz

ENV HOME=/root \
    LANG=en_US.UTF-8 \
    LANGUAGE=en_US.UTF-8 \
    LC_ALL=C.UTF-8 \
    REMOTE_HOST=localhost \
    REMOTE_PORT=5900

RUN apk --update --upgrade add git bash supervisor wget \
    && mkdir -p /root/noVNC \
    && cd /root/noVNC \
    && wget ${NOVNC_URL} \
    && echo tar --strip=1 -xaf $(basename ${NOVNC_URL}) \
    && tar --strip=1 -xaf $(basename ${NOVNC_URL}) \
    && rm $(basename ${NOVNC_URL}) \
    && sed -i -- "s/ps -p/ps -o pid | grep/g" /root/noVNC/utils/novnc_proxy

COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf

EXPOSE 8081

CMD ["/usr/bin/supervisord", "-c", "/etc/supervisor/conf.d/supervisord.conf"]
