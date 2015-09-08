#!/bin/sh

DIR=$PWD/certs
PROJECT_NAME=CircleCI-Test
SCHEME_NAME=AdHoc
MOBILEPROVISION_NAME=AdHocTest

xcodebuild clean -project "${PROJECT_NAME}.xcodeproj" -scheme "${SCHEME_NAME}"
xcodebuild -project "${PROJECT_NAME}.xcodeproj" -sdk "iphoneos" -scheme "${SCHEME_NAME}" install DSTROOT="${DIR}"
xcrun -sdk 'iphoneos' PackageApplication "${DIR}/Applications/${PROJECT_NAME}.app" -o "${DIR}/CircleCI-Test.ipa" -embed "~/${MOBILEPROVISION_NAME}.mobileprovision"
rm -rf "${DIR}/Applications"
rm -rf "${DIR}/build"

 # -target ${PROJECT_NAME}
 # -configuration ${PROJECT_NAME}
 # -scheme ${SCHEME_NAME}
