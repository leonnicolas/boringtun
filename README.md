# boringtun

[![Multi Arch Build](https://github.com/leonnicolas/boringtun/workflows/Multi%20Arch%20Build/badge.svg)](https://github.com/leonnicolas/boringtun/actions/workflows/build.yaml)
[![Docker Pulls](https://img.shields.io/docker/pulls/leonnicolas/boringtun?color=blue)](https://hub.docker.com/repository/docker/leonnicolas/boringtun)

Multi-Arch docker image for [boringtun](https://github.com/cloudflare/boringtun)

## Usage

```bash
docker run -it --rm --cap-add=NET_ADMIN --device=/dev/net/tun -v /var/run/wireguard:/var/run/wireguard -p 51820:51820 -e WG_LOG_LEVEL=debug  leonnicolas/boringtun --foreground --disable-drop-privileges true wg0
```

## Build

A github action runs every night and pushes a new manifest if the main branch of Cloudflare's [boringtun](https://github.com/cloudflare/boringtun) was  updated.

## Available Tags

For every day with a new commit, a manifest with a new tag is created.
Manifests annotated with only a sha sum are based on `Debian:stable-slim`.
Manifests with the tag `alpine-<sha>` or alpine are based on `alpine`.

### latest

Based on Debian:stable-slim

### alpine 

Based on Alpine.

__Note__: During compiling, the unsupported crate `dylib` is dropped.
