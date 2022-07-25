## frps and frpc docker images
[Origin Repository](https://github.com/fatedier/frp)
> It's a simple Unit. to connect public network and your local

### frps

everything is initial
```shell
docker run -d --restart always --network host --name frps frps
```

or you can use custom config file.
```shell
docker run -d --restart always --network host -v `pwd`/frps.ini:/etc/frps/frps.ini --name frps frps
```

### frpc

First. you much change your server address.
```shell
vim frpc.ini
```

```shell
docker run -d --restart always --network host -v `pwd`/frpc.ini:/etc/frpc/frpc.ini --name frpc frpc
```