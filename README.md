# docker-weixin-latest

[![Docker Pulls](https://img.shields.io/docker/pulls/a952454/docker-weixin-latest)](https://hub.docker.com/r/a952454/docker-weixin-latest)
[![Docker Image Size](https://img.shields.io/docker/image-size/a952454/docker-weixin-latest/latest)](https://hub.docker.com/r/a952454/docker-weixin-latest)

A Docker image that runs WeChat on Linux, based on `linuxserver/weixin:latest` with an **automatic update feature** – every time the container starts, it checks and installs the latest available Linux WeChat version.

## Why this image?

The official `linuxserver/weixin` image is great, but it bundles a specific WeChat release. This image extends it by adding a startup script that always fetches and installs the most recent WeChat package, so you never run an outdated version.

## Features

- ✅ Based on the stable `linuxserver/weixin:latest` base image  
- ✅ Automatically updates WeChat to the latest Linux version at container start  
- ✅ All original environment variables and volumes from `linuxserver/weixin` still work  
- ✅ Lightweight – only adds a small update script  

## Quick Start

### Pull the image

```bash
docker pull a952454/docker-wechat:latest

# Replace /path/to/config and /path/to/data with your actual host directories.
docker run -d \
  --name weixin \
  -e PUID=1000 \
  -e PGID=1000 \
  -e TZ=Asia/Shanghai \
  -e LC_ALL=zh_CN.UTF-8 \
  -p 3000:3000 \
  -p 3001:3001 \
  -v /path/to/weixin/config:/config \
  --restart unless-stopped \
  a952454/docker-wechat:latest

