#!/bin/sh

DIR=$PWD/certs

curl -F "file=@${DIR}/CircleCI-Test.ipa" -F "token=97b0b37e3a7267c25220ba4a29ba5d629525a245" https://deploygate.com/api/users/keygx/apps
