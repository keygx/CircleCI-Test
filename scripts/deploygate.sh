#!/bin/sh

# DEPLOYGATE_TOKEN

DIR=$PWD/certs

curl -F "file=@${DIR}/CircleCI-Test.ipa" -F "token=${DEPLOYGATE_TOKEN}" https://deploygate.com/api/users/keygx/apps
