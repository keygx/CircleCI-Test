#!/bin/sh

# ipa build --clean -s AdHoc

PROJECT_NAME=CircleCI-Test
SCHEME_NAME=AdHoc
CONFIGURATION_NAME=AdHoc
MOBILEPROVISION_NAME=AdHocTest

xcodebuild clean -project ${PROJECT_NAME}
xcodebuild -project "${PROJECT_NAME}.xcodeproj" -destination 'name=iPhone 6' -scheme ${SCHEME_NAME} -configuration ${CONFIGURATION_NAME} install DSTROOT='.'
xcrun -sdk 'iphoneos' PackageApplication "${PWD}/Applications/${PROJECT_NAME}.app" -o "${PWD}/CircleCI-Test.ipa" -embed "~/Library/MobileDevice/Provisioning Profiles/${MOBILEPROVISION_NAME}.mobileprovision"
rm -rf "${PWD}/Applications"
