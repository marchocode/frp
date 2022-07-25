# frps 0.44.0
FROM alpine:3.15

ENV FRPS_HOME="/etc/frps"
ENV FRPS_EXEC="/usr/bin"

WORKDIR ${FRPS_HOME}
COPY frps ${FRPS_EXEC}
COPY frps.ini .

EXPOSE 7000

ENTRYPOINT ["frps","-c","./frps.ini"]