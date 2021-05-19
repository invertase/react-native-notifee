# Notifee example project

## Installation

* `git clone https://github.com/notifee/react-native-notifee.git`
* `cd react-native-notifee/example`
* `yarn`


## Running Android

* make sure you have no other packagers running!
* `react-native start`
* start an emulator (e.g., using Android Studio -> Tools -> AVD Manager -> start one)
* `react-native run-android`

## Running iOS

* make sure you have no other packagers running!
* `react-native start`

### Without CocoaPods

* `react-native run-ios`

### With CocoaPods

* `cd ios && pod install && cd ..`
* `react-native run-ios`

## Troubleshooting

* if things don't work, clean up all your build and node_modules folders, npm install and rebuild