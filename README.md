# boringtun

[![Multi Arch Build](https://github.com/leonnicolas/boringtun/workflows/Multi%20Arch%20Build/badge.svg)](https://github.com/leonnicolas/boringtun/actions/workflows/build.yaml)
[![Docker Pulls](https://img.shields.io/docker/pulls/leonnicolas/boringtun?color=blue)](https://hub.docker.com/repository/docker/leonnicolas/boringtun)

Multi-Arch docker image for [boringtun](https://github.com/cloudflare/boringtun)

## Usage

```bash
docker run -it --rm --cap-add=NET_ADMIN --device=/dev/net/tun -v /var/run/wireguard:/var/run/wireguard -p 51820:51820 -e WG_LOG_LEVEL=debug  leonnicolas/boringtun --foreground --disable-drop-privileges true wg0
```
