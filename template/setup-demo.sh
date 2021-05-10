#!/bin/bash
set -e

echo "Copy Source Code"

cp -rv ./demo/src ./temp/.
cp -rv ./demo/App.tsx ./temp/App.tsx

# Basic template create, notifee install, link
\rm -fr ./demo

echo "Testing react-native current + notifee master"
npx react-native init demo
cd ./demo

# I frequently have Flipper-related problems and they are nothing but a distraction from the point of this script.
# Disable flipper.
echo "Disabling flipper"
sed -i -e 's/use_flipper/#&/' ios/Podfile
sed -i -e 's/flipper_post_install/#&/' ios/Podfile
rm -f ios/Podfile.??

# This is the most basic integration
echo "Adding Notifee app package"
yarn add "@notifee/react-native"

# Set the Java application up for multidex (needed for API<21 w/Firebase)
echo "Configuring Android MultiDex for API<21 support - gradle toggle, library dependency, Application object inheritance"
sed -i -e $'s/defaultConfig {/defaultConfig {\\\n        multiDexEnabled true/' android/app/build.gradle
rm -f android/app/build.gradle??
sed -i -e $'s/dependencies {/dependencies {\\\n    implementation "androidx.multidex:multidex:2.0.1"/' android/app/build.gradle
rm -f android/app/build.gradle??
sed -i -e $'s/import android.app.Application;/import androidx.multidex.MultiDexApplication;/' android/app/src/main/java/com/demo/MainApplication.java
rm -f android/app/src/main/java/com/demo/MainApplication.java??
sed -i -e $'s/extends Application/extends MultiDexApplication/' android/app/src/main/java/com/demo/MainApplication.java
rm -f android/app/src/main/java/com/demo/MainApplication.java??

# Another Java build tweak - or gradle runs out of memory during the build in big projects
echo "Increasing memory available to gradle for android java build"
echo "org.gradle.jvmargs=-Xmx2048m -XX:MaxPermSize=512m -XX:+HeapDumpOnOutOfMemoryError -Dfile.encoding=UTF-8" >> android/gradle.properties

# In case we have any patches
echo "Running any patches necessary to compile successfully"
cp -rv ../patches .
npx patch-package

# Copy over meta files
echo "Copying meta files"
cp -rv ../meta/. .

# Copy in our demonstrator App.js
echo "Copying demonstrator code"
rm ./App.js && cp ../temp/App.tsx ./App.tsx
cp -rv ../temp/src .

# Run the thing for iOS
if [ "$(uname)" == "Darwin" ]; then
  echo "Installing pods and running iOS app"
  if [ "$(uname -m)" == "arm64" ]; then
    echo "Installing pods with prefix arch -arch x86_64"
    cd ios && arch -arch x86_64 pod install && cd ..
  else
    cd ios && pod install --repo-update && cd ..
  fi
  npx react-native run-ios
  # workaround for poorly setup Android SDK environments
  USER=`whoami`
  echo "sdk.dir=/Users/$USER/Library/Android/sdk" > android/local.properties
fi

echo "Configuring Android release build for ABI splits and code shrinking"
sed -i -e $'s/def enableSeparateBuildPerCPUArchitecture = false/def enableSeparateBuildPerCPUArchitecture = true/' android/app/build.gradle
rm -f android/app/build.gradle??
sed -i -e $'s/def enableProguardInReleaseBuilds = false/def enableProguardInReleaseBuilds = true/' android/app/build.gradle
rm -f android/app/build.gradle??
sed -i -e $'s/universalApk false/universalApk true/' android/app/build.gradle
rm -f android/app/build.gradle??

# Run it for Android (assumes you have an android emulator running)
echo "Running android app"
npx react-native run-android --variant release

# Let it start up, then uninstall it (otherwise ABI-split-generated version codes will prevent debug from installing)
sleep 10
pushd android
./gradlew uninstallRelease
popd

# may or may not be commented out, depending on if have an emulator available
# I run it manually in testing when I have one, comment if you like
npx react-native run-android