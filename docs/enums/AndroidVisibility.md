[@notifee/react-native](../README.md) / [Exports](../modules.md) / AndroidVisibility

# Enumeration: AndroidVisibility

Interface used to define the visibility of an Android notification.

Use with the `visibility` property on the notification.

View the [Visibility](/react-native/docs/android/appearance#visibility) documentation to learn more.

Default value is `AndroidVisibility.PRIVATE`.

**`platform`** android

## Table of contents

### Enumeration members

- [PRIVATE](AndroidVisibility.md#private)
- [PUBLIC](AndroidVisibility.md#public)
- [SECRET](AndroidVisibility.md#secret)

## Enumeration members

### PRIVATE

• **PRIVATE** = `0`

Show the notification on all lockscreens, but conceal sensitive or private information on secure lockscreens.

#### Defined in

[src/types/NotificationAndroid.ts:1179](https://github.com/cabljac/react-native-notifee/blob/4d792c9/src/types/NotificationAndroid.ts#L1179)

___

### PUBLIC

• **PUBLIC** = `1`

Show this notification in its entirety on all lockscreens.

#### Defined in

[src/types/NotificationAndroid.ts:1184](https://github.com/cabljac/react-native-notifee/blob/4d792c9/src/types/NotificationAndroid.ts#L1184)

___

### SECRET

• **SECRET** = `-1`

Do not reveal any part of this notification on a secure lockscreen.

Useful for notifications showing sensitive information such as banking apps.

#### Defined in

[src/types/NotificationAndroid.ts:1191](https://github.com/cabljac/react-native-notifee/blob/4d792c9/src/types/NotificationAndroid.ts#L1191)
