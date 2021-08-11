[@notifee/react-native](../README.md) / [Exports](../modules.md) / NotificationIOS

# Interface: NotificationIOS

The interface for iOS specific options which are applied to a notification.

To learn more about iOS notifications, view the [iOS](/react-native/docs/iOS/introduction)
documentation for full examples and usage.

**`platform`** ios

## Table of contents

### Properties

- [attachments](NotificationIOS.md#attachments)
- [badgeCount](NotificationIOS.md#badgecount)
- [categoryId](NotificationIOS.md#categoryid)
- [critical](NotificationIOS.md#critical)
- [criticalVolume](NotificationIOS.md#criticalvolume)
- [foregroundPresentationOptions](NotificationIOS.md#foregroundpresentationoptions)
- [launchImageName](NotificationIOS.md#launchimagename)
- [sound](NotificationIOS.md#sound)
- [summaryArgument](NotificationIOS.md#summaryargument)
- [summaryArgumentCount](NotificationIOS.md#summaryargumentcount)
- [targetContentId](NotificationIOS.md#targetcontentid)
- [threadId](NotificationIOS.md#threadid)

## Properties

### attachments

• `Optional` **attachments**: [`IOSNotificationAttachment`](IOSNotificationAttachment.md)[]

Optional array of [IOSNotificationAttachment](/react-native/reference/iosnotificationattachment) interfaces.

Attachments allow audio, image, or video content to be displayed with the notification, enriching the user's experience.

View the [Attachments](/react-native/docs/ios/appearances#attachments) documentation for more information
and usage examples.

#### Defined in

[src/types/NotificationIOS.ts:22](https://github.com/cabljac/react-native-notifee/blob/4d792c9/src/types/NotificationIOS.ts#L22)

___

### badgeCount

• `Optional` **badgeCount**: ``null`` \| `number`

The application badge count number. Set to null to indicate no change, or 0 to hide.

#### Defined in

[src/types/NotificationIOS.ts:27](https://github.com/cabljac/react-native-notifee/blob/4d792c9/src/types/NotificationIOS.ts#L27)

___

### categoryId

• `Optional` **categoryId**: `string`

The id of a registered `IOSCategory` (via the `setNotificationCategories` API) that will be used to determine the
appropriate actions to display for the notification.

#### Defined in

[src/types/NotificationIOS.ts:33](https://github.com/cabljac/react-native-notifee/blob/4d792c9/src/types/NotificationIOS.ts#L33)

___

### critical

• `Optional` **critical**: `boolean`

If the notification is a critical alert set this property to true; critical alerts will bypass
the mute switch and also bypass Do Not Disturb.

**`platform`** ios iOS >= 12

#### Defined in

[src/types/NotificationIOS.ts:56](https://github.com/cabljac/react-native-notifee/blob/4d792c9/src/types/NotificationIOS.ts#L56)

___

### criticalVolume

• `Optional` **criticalVolume**: `number`

The optional audio volume of the critical sound; a float value between 0.0 and 1.0.

This property is not used unless the `critical: true` option is also set.

**`platform`** ios iOS >= 12

#### Defined in

[src/types/NotificationIOS.ts:65](https://github.com/cabljac/react-native-notifee/blob/4d792c9/src/types/NotificationIOS.ts#L65)

___

### foregroundPresentationOptions

• `Optional` **foregroundPresentationOptions**: [`IOSForegroundPresentationOptions`](IOSForegroundPresentationOptions.md)

Optional property to customise how notifications are presented when the app is in the foreground.

By default, Notifee will show iOS notifications in heads-up mode if your app is currently in the foreground.

#### Defined in

[src/types/NotificationIOS.ts:110](https://github.com/cabljac/react-native-notifee/blob/4d792c9/src/types/NotificationIOS.ts#L110)

___

### launchImageName

• `Optional` **launchImageName**: `string`

The launch image that will be used when the app is opened from this notification.

#### Defined in

[src/types/NotificationIOS.ts:38](https://github.com/cabljac/react-native-notifee/blob/4d792c9/src/types/NotificationIOS.ts#L38)

___

### sound

• `Optional` **sound**: `string`

The name of the sound file to be played. The sound must be in the Library/Sounds folder of the
app's data container or the Library/Sounds folder of an app group data container.

If the file is not found in a container, the system will look in the app's bundle.

Use 'default' to use the default system sound.

#### Defined in

[src/types/NotificationIOS.ts:48](https://github.com/cabljac/react-native-notifee/blob/4d792c9/src/types/NotificationIOS.ts#L48)

___

### summaryArgument

• `Optional` **summaryArgument**: `string`

The argument that is inserted in the IOSCategory.summaryFormat for this notification.

See `IOSCategory.summaryFormat`.

**`platform`** ios iOS >= 12

#### Defined in

[src/types/NotificationIOS.ts:80](https://github.com/cabljac/react-native-notifee/blob/4d792c9/src/types/NotificationIOS.ts#L80)

___

### summaryArgumentCount

• `Optional` **summaryArgumentCount**: `number`

A number that indicates how many items in the summary are being represented.

For example if a messages app sends one notification for 3 new messages in a group chat,
the summaryArgument could be the name of the group chat and the summaryArgumentCount should be 3.

If set, value cannot be 0 or less.

See `IOSCategory.summaryFormat`.

**`platform`** ios iOS >= 12

#### Defined in

[src/types/NotificationIOS.ts:94](https://github.com/cabljac/react-native-notifee/blob/4d792c9/src/types/NotificationIOS.ts#L94)

___

### targetContentId

• `Optional` **targetContentId**: `string`

The identifier for the window to be opened when the user taps a notification.

This value determines the window brought forward when the user taps this notification on iPadOS.

**`platform`** ios iOS >= 13

#### Defined in

[src/types/NotificationIOS.ts:103](https://github.com/cabljac/react-native-notifee/blob/4d792c9/src/types/NotificationIOS.ts#L103)

___

### threadId

• `Optional` **threadId**: `string`

A unique id for the thread or conversation related to this notification.
This will be used to visually group notifications together.

#### Defined in

[src/types/NotificationIOS.ts:71](https://github.com/cabljac/react-native-notifee/blob/4d792c9/src/types/NotificationIOS.ts#L71)
