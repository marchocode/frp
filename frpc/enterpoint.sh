#!/bin/sh

config=/frp/frpc.toml

if [ -n ${serverAddr} ];then
    sed -i "s/serverAddr = \"127.0.0.1\"/serverAddr = \"${serverAddr}\"/g" ${config}
fi

if [ -n ${serverPort} ];then
    sed -i "s/7000/${serverPort}/g" ${config}
fi

if [ -n ${remotePort} ];then
    sed -i "s/6000/${remotePort}/g" ${config}
fi

exec $@