# frpc 0.44.0
FROM alpine:3.15

ENV FRPC_HOME="/etc/frpc"
ENV FRPC_EXEC="/usr/bin"

WORKDIR ${FRPC_HOME}
COPY frpc ${FRPC_EXEC}
COPY frpc.ini .

ENTRYPOINT ["frpc","-c","./frpc.ini"]
