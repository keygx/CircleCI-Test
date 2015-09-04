#!/bin/sh

ipa build --clean -s AdHoc

# PROJECT_NAME='CircleCI-Test.xcodeproj'
#
# xcodebuild clean -project ${PROJECT_NAME}
#
# xcodebuild -project ${PROJECT_NAME} -destination 'name=iPhone 6' -scheme 'AdHoc' -configuration 'AdHoc' install DSTROOT='.'
#
# xcrun -sdk 'iphoneos8.4' PackageApplication 'Applications/CircleCI-Test.app' -o 'CircleCI-Test.ipa' -embed '~/Library/MobileDevice/Provisioning Profiles/AdHocTest.mobileprovision.mobileprovision'
