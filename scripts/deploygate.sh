#!/bin/sh

# DEPLOYGATE_API_TOKEN
# DEPLOYGATE_USERNAME

bundle exec ipa distribute:deploygate -m --api_token ${DEPLOYGATE_API_TOKEN} --user_name ${DEPLOYGATE_USERNAME}
