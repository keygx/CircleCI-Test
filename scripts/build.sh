#!/bin/sh

# ipa build --clean -s AdHoc

PROJECT_NAME='CircleCI-Test.xcodeproj'

xcodebuild clean -project ${PROJECT_NAME}

xcodebuild -project ${PROJECT_NAME} -sdk "iphoneos8.1" -scheme 'AdHoc' -configuration "AdHoc" -target "CircleCI-Test"

xcrun -sdk "iphoneos8.1" PackageApplication "CircleCI-Test.app" -o "CircleCI-Test.ipa" -embed "~/Library/MobileDevice/Provisioning Profiles/AdHocTest.mobileprovision.mobileprovision"

rm -rf build
