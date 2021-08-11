[@notifee/react-native](../README.md) / [Exports](../modules.md) / Notification

# Interface: Notification

Interface for building a local notification for both Android & iOS devices.

To learn more about displaying a notification, view the [Displaying a Notification](/react-native/docs/displaying-a-notification)
documentation.

## Table of contents

### Properties

- [android](Notification.md#android)
- [body](Notification.md#body)
- [data](Notification.md#data)
- [id](Notification.md#id)
- [ios](Notification.md#ios)
- [subtitle](Notification.md#subtitle)
- [title](Notification.md#title)

## Properties

### android

• `Optional` **android**: [`NotificationAndroid`](NotificationAndroid.md)

Android specific notification options. See the [`NotificationAndroid`](/react-native/reference/notificationandroid)
interface for more information and default options which are applied to a notification.

**`platform`** android

#### Defined in

[src/types/Notification.ts:61](https://github.com/cabljac/react-native-notifee/blob/4d792c9/src/types/Notification.ts#L61)

___

### body

• `Optional` **body**: `string`

The main body content of a notification.

#### Defined in

[src/types/Notification.ts:45](https://github.com/cabljac/react-native-notifee/blob/4d792c9/src/types/Notification.ts#L45)

___

### data

• `Optional` **data**: `Object`

Additional data to store on the notification. Only `string` values can be stored.

Data can be used to provide additional context to your notification which can be retrieved
at a later point in time (e.g. via an event).

#### Index signature

▪ [key: `string`]: `string`

#### Defined in

[src/types/Notification.ts:53](https://github.com/cabljac/react-native-notifee/blob/4d792c9/src/types/Notification.ts#L53)

___

### id

• `Optional` **id**: `string`

A unique identifier for your notification.

Notifications with the same ID will be created as the same instance, allowing you to update
a notification which already exists on the device.

Defaults to a random string if not provided.

#### Defined in

[src/types/Notification.ts:30](https://github.com/cabljac/react-native-notifee/blob/4d792c9/src/types/Notification.ts#L30)

___

### ios

• `Optional` **ios**: [`NotificationIOS`](NotificationIOS.md)

iOS specific notification options. See the [`NotificationIOS`](/react-native/reference/notificationios)
interface for more information and default options which are applied to a notification.

**`platform`** ios

#### Defined in

[src/types/Notification.ts:69](https://github.com/cabljac/react-native-notifee/blob/4d792c9/src/types/Notification.ts#L69)

___

### subtitle

• `Optional` **subtitle**: `string`

The notification subtitle, which appears on a new line below/next the title.

#### Defined in

[src/types/Notification.ts:40](https://github.com/cabljac/react-native-notifee/blob/4d792c9/src/types/Notification.ts#L40)

___

### title

• `Optional` **title**: `string`

The notification title which appears above the body text.

#### Defined in

[src/types/Notification.ts:35](https://github.com/cabljac/react-native-notifee/blob/4d792c9/src/types/Notification.ts#L35)
