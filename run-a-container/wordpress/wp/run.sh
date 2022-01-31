#!/bin/bash

#podman pod create -p 127.0.0.1:8000:80 --network=cni-podman1 --name=wp-pod
podman pod create -p 0.0.0.0:8000:80 --network=cni-podman1 --name=wp-pod
podman pod create --name=db-pod --network=cni-podman1 --network-alias=db
#podman pod create -p 127.0.0.1:8000:80 --name=wp-pod
#podman pod create --name=db-pod --network-alias=db

podman run -dt --name=adb --restart=always --pod=db-pod -v local-wp-db:/var/lib/mysql -e MARIADB_DATABASE=wordpress -e MARIADB_RANDOM_ROOT_PASSWORD='1' -e MARIADB_USER=wordpress -e MARIADB_PASSWORD=password mariadb:latest 
sleep 10
podman run -dt --name=wpp --restart=always --pod=wp-pod -v local-wp-www:/var/www/ -e WORDPRESS_DB_PASSWORD=password -e WORDPRESS_DB_USER=wordpress -e WORDPRESS_DB_HOST=db   -e WORDPRESS_DB_NAME=wordpress wordpress:latest
