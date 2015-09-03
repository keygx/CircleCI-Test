#!/bin/sh

# DEPLOYGATE_API_TOKEN
# DEPLOYGATE_USERNAME

#ipa distribute:deploygate --api_token DEPLOYGATE_API_TOKEN --distribution_key DEPLOYGATE_DISTRIBUTION_KEY --user_name DEPLOYGATE_USERNAME
ipa distribute:deploygate -m --api_token ${DEPLOYGATE_API_TOKEN} --user_name ${DEPLOYGATE_USERNAME}
