# boringtun

[![Multi Arch Build](https://github.com/leonnicolas/boringtun/actions/workflows/build.yaml/badge.svg)](https://github.com/leonnicolas/boringtun/actions/workflows/build.yaml)
[![Multi Arch Build for Alpine](https://github.com/leonnicolas/boringtun/actions/workflows/build_alpine.yaml/badge.svg)](https://github.com/leonnicolas/boringtun/actions/workflows/build_alpine.yaml)
[![Docker Pulls](https://img.shields.io/docker/pulls/leonnicolas/boringtun?color=blue)](https://hub.docker.com/r/leonnicolas/boringtun)

Multi-Arch docker image for [boringtun](https://github.com/cloudflare/boringtun)

## Usage

```bash
docker run -it --rm --cap-add=NET_ADMIN --device=/dev/net/tun -v /var/run/wireguard:/var/run/wireguard -p 51820:51820 -e WG_LOG_LEVEL=debug  leonnicolas/boringtun --foreground --disable-drop-privileges true wg0
```

## Build

A github action runs every night and pushes a new manifest if the main branch of Cloudflare's [boringtun](https://github.com/cloudflare/boringtun) was  updated.

## Available Tags

For every day with a new commit to Cloudflare's boringtun, a manifest with a new tag is created.

Manifests annotated with only a sha sum are based on `Debian:stable-slim`.

Manifests with the tag `alpine-<sha>` or alpine are based on `alpine`.

### latest

Based on Debian:stable-slim

### alpine 

Based on Alpine

## Container Registry

Images can be found on [Docker Hub](https://hub.docker.com/r/leonnicolas/boringtun) `leonnicolas/boringtun` and [GitHub Container Registry](https://ghcr.io) `ghcr.io/leonnicolas/boringtun`.
