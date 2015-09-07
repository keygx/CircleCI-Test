#!/bin/sh

# DEPLOYGATE_API_TOKEN
# DEPLOYGATE_USERNAME

curl -F file=@${PWD}/CircleCI-Test.ipa -F token=97b0b37e3a7267c25220ba4a29ba5d629525a245 https://deploygate.com/api/users/keygx/apps



# dgate push keygx "${PWD}/CircleCI-Test.ipa"
# ipa distribute:deploygate -m --api_token ${DEPLOYGATE_API_TOKEN} --user_name ${DEPLOYGATE_USERNAME}