#!/bin/sh

# ITUNES_CONNECT_ID
# ITUNES_CONNECT_PW

UUID=58a4e3e2-05d2-4a02-9cc7-be6f4116503a
PROFILE_NAME=AdHocTest

ios profiles:download ${PROFILE_NAME} --type distribution -u ${ITUNES_CONNECT_ID} -p ${ITUNES_CONNECT_PW}

mv $HOME/${PROFILE_NAME}.mobileprovision $HOME/${UUID}.mobileprovision
