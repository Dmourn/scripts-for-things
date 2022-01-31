#!/bin/bash

podman pod create -p 127.0.0.1:8000:3000 --name=gitpod
podman run --pod=gitpod -dt --name gitea -v mygitea:/var/lib/gitea gitea

