#!/bin/bash

#./make-secrets.sh secret_name  >& /dev/null
gpg --gen-random -q -a 2 30 > $1 && podman secret create $1 $1 && cat /dev/null > $1
