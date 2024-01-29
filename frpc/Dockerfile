# frpc 0.44.0
FROM alpine:latest

WORKDIR /frp

RUN wget -O frp_0.53.2_linux_amd64.tar.gz https://github.com/fatedier/frp/releases/download/v0.53.2/frp_0.53.2_linux_amd64.tar.gz && tar -xf frp_0.53.2_linux_amd64.tar.gz && rm -rf frp_0.53.2_linux_amd64.tar.gz
RUN cp frp_0.53.2_linux_amd64/frpc* /frp

COPY enterpoint.sh /
CMD [ "/frp/frpc -c /frp/frpc.toml" ]

ENTRYPOINT [ "/enterpoint.sh" ]