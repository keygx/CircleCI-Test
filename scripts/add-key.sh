#!/bin/sh

# APPLE_AUTHORITY_BASE64=
# DISTRIBUTION_KEY_BASE64
# DISTRIBUTION_CERTIFICATE_BASE64
# P12_PASSPHRASE=

DIR=tmp/certs
KEYCHAIN_NAME='~/Library/Keychains/ios-build.keychain'
KEYCHAIN_PASSWORD=`openssl rand -base64 48`
PROFILE_NAME=AdHocTest
rm -rf $DIR
mkdir -p $DIR
echo ${APPLE_AUTHORITY_BASE64} | base64 -D > ${DIR}/apple.cer
echo ${DISTRIBUTION_KEY_BASE64} | base64 -D > ${DIR}/dist.p12
echo ${DISTRIBUTION_CERTIFICATE_BASE64} | base64 -D > ${DIR}/dist.cer
security create-keychain -p ${KEYCHAIN_PASSWORD} ios-build.keychain
security import ${DIR}/apple.cer -k ${KEYCHAIN_NAME} -T /usr/bin/codesign
security import ${DIR}/dist.cer  -k ${KEYCHAIN_NAME} -T /usr/bin/codesign
security import ${DIR}/dist.p12  -k ${KEYCHAIN_NAME} -T /usr/bin/codesign -P ${P12_PASSPHRASE}
security list-keychain -s ${KEYCHAIN_NAME}
security unlock-keychain -p ${KEYCHAIN_PASSWORD} ${KEYCHAIN_NAME}
rm -rf $DIR

mkdir -p ~/Library/MobileDevice/Provisioning\ Profiles
cp ./${PROFILE_NAME}.mobileprovision ~/Library/MobileDevice/Provisioning\ Profiles/${PROFILE_NAME}.mobileprovision
