#!/bin/sh

http  "10.129.204.50:3000/api/user/login"  "email"="bb@bb.bb" "password"="password" > authtoken

HEADER=$(cat authtoken | awk -F '.' '{print $1}' | base64 -d)
DATA=$(cat authtoken | awk -F '.' '{print $2}' | base64 -d)
SIGNATURE=$(cat authtoken | awk -F '.' '{print $3}' | base64 -d)

echo "Header $HEADER"
echo "Data $DATA"
echo "Signature $SIGNATURE"
