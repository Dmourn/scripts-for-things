#!/bin/bash

ALPKEY=$1

if [[ -z $ALPKEY ]] ; then
	ALPKEY=/home/"$USER"/.ssh/local/mykey
fi

podman run -dt --name=tempbox alpine 
podman exec -it tempbox sh -c 'apk update && apk upgrade && apk add openssh rsync && mkdir /root/.ssh'

sleep 2

podman cp "$ALPKEY" tempbox:/root/.ssh/id_rsa
podman exec -it tempbox sh -c 'eval $(ssh-agent) && ssh-add && sh -i'
podman rm -f tempbox

# vi: ts=4
