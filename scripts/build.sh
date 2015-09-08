#!/bin/sh

DIR=$PWD/certs

#ipa build --clean -s AdHoc

# PROJECT_NAME=CircleCI-Test
# SCHEME_NAME=AdHoc
# MOBILEPROVISION_NAME=AdHocTest

xcodebuild clean -project ${PROJECT_NAME} -scheme AdHoc
xcodebuild -project "${PROJECT_NAME}.xcodeproj" -sdk 'iphoneos' -target ${PROJECT_NAME} -scheme AdHoc install DSTROOT="${PWD}"
xcrun -sdk 'iphoneos' PackageApplication "${DIR}/Applications/${PROJECT_NAME}.app" -o "${DIR}/CircleCI-Test.ipa" -embed "~/Library/MobileDevice/Provisioning Profiles/${MOBILEPROVISION_NAME}.mobileprovision"
rm -rf "${DIR}/Applications"
rm -rf "${DIR}/build"

 # -target ${PROJECT_NAME}
 # -configuration ${PROJECT_NAME}
 # -scheme ${SCHEME_NAME}
