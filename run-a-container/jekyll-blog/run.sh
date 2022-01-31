#!/bin/bash

podman pod create --name=web-pod --network=cni-podman1 -p 127.0.0.1:8000:80
podman run --restart=always -dt --pod=web-pod --name=jk-ng jk-nginx
podman run --restart=always -dt --pod=web-pod --name=jk-site jkblog
