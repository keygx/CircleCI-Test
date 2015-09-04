#!/bin/sh

# APPLE_AUTHORITY_BASE64=
# DISTRIBUTION_CERTIFICATE_BASE64
# DISTRIBUTION_KEY_BASE64
# P12_PASSPHRASE=


DIR='./certs'
KEYCHAIN_PATH='~/Library/Keychains/ios-build.keychain'
KEYCHAIN_PASSWORD=circle
PROFILE_NAME=AdHocTest

rm -rf $DIR
mkdir -p $DIR

#echo ${APPLE_AUTHORITY_BASE64} | base64 -D >> ${DIR}/apple.cer
#echo ${DISTRIBUTION_CERTIFICATE_BASE64} | base64 -D >> ${DIR}/dist.cer
#echo ${DISTRIBUTION_KEY_BASE64} | base64 -D >> ${DIR}/dist.p12

# APPLE_AUTHORITY_URL=
# DISTRIBUTION_CERTIFICATE_URL
# DISTRIBUTION_KEY_URL

curl -k ${APPLE_AUTHORITY_URL} -o ${DIR}/apple.cer
curl -k ${DISTRIBUTION_CERTIFICATE_URL} -o ${DIR}/dist.cer
curl -k ${DISTRIBUTION_KEY_URL} -o ${DIR}/dist.p12

security create-keychain -p ${KEYCHAIN_PASSWORD} ${KEYCHAIN_PATH}
security unlock-keychain -p ${KEYCHAIN_PASSWORD} ${KEYCHAIN_PATH}
security import ${DIR}/apple.cer -k ${KEYCHAIN_PATH} -T /usr/bin/codesign
security import ${DIR}/dist.cer -k ${KEYCHAIN_PATH} -T /usr/bin/codesign
security import ${DIR}/dist.p12 -k ${KEYCHAIN_PATH} -T /usr/bin/codesign -P ${P12_PASSPHRASE}
# security list-keychain -s ${KEYCHAIN_PATH}
# security unlock-keychain -p ${KEYCHAIN_PASSWORD} ${KEYCHAIN_PATH}
rm -rf $DIR

mkdir -p ~/Library/MobileDevice/Provisioning\ Profiles
cp ${PROFILE_NAME}.mobileprovision ~/Library/MobileDevice/Provisioning\ Profiles/${PROFILE_NAME}.mobileprovision
