#!/bin/sh

#ipa build --clean -s AdHoc

# PROJECT_NAME=CircleCI-Test
# SCHEME_NAME=AdHoc
# MOBILEPROVISION_NAME=AdHocTest

xcodebuild clean -project ${PROJECT_NAME}
xcodebuild -project "${PROJECT_NAME}.xcodeproj" -sdk 'iphoneos' -target ${PROJECT_NAME} -configuration ${PROJECT_NAME} install DSTROOT="${PWD}"
xcrun -sdk 'iphoneos' PackageApplication "${PWD}/Applications/${PROJECT_NAME}.app" -o "${PWD}/CircleCI-Test.ipa" -embed "~/Library/MobileDevice/Provisioning Profiles/${MOBILEPROVISION_NAME}.mobileprovision"
rm -rf "${PWD}/Applications"
rm -rf "${PWD}/build"

 # -target ${PROJECT_NAME}
 # -configuration ${PROJECT_NAME}
 # -scheme ${SCHEME_NAME}
