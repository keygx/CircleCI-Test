#!/bin/sh

# ITUNES_CONNECT_ID
# ITUNES_CONNECT_PW

PROFILE_NAME=AdHocTest

ios profiles:download ${PROFILE_NAME} --type distribution -u ${ITUNES_CONNECT_ID} -p ${ITUNES_CONNECT_PW}
