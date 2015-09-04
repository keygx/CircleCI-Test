#!/bin/sh

# DEPLOYGATE_API_TOKEN
# DEPLOYGATE_USERNAME

# ipa distribute:deploygate -m --api_token ${DEPLOYGATE_API_TOKEN} --user_name ${DEPLOYGATE_USERNAME}

dgate push keygx "${PWD}/CircleCI-Test.ipa"
