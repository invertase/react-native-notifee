[@notifee/react-native](../README.md) / [Exports](../modules.md) / IOSNotificationSettings

# Interface: IOSNotificationSettings

An interface representing the current authorization status and notification-related settings for your app.

This interface is returned from [`requestPermission`](/react-native/reference/requestpermission)
and [`getNotificationSettings`](/reference/getnotificationsettings).

View the [Observing Settings](/react-native/docs/ios/permissions#observing-settings) documentation to learn more.

**`platform`** ios

## Table of contents

### Properties

- [alert](IOSNotificationSettings.md#alert)
- [announcement](IOSNotificationSettings.md#announcement)
- [authorizationStatus](IOSNotificationSettings.md#authorizationstatus)
- [badge](IOSNotificationSettings.md#badge)
- [carPlay](IOSNotificationSettings.md#carplay)
- [criticalAlert](IOSNotificationSettings.md#criticalalert)
- [inAppNotificationSettings](IOSNotificationSettings.md#inappnotificationsettings)
- [lockScreen](IOSNotificationSettings.md#lockscreen)
- [notificationCenter](IOSNotificationSettings.md#notificationcenter)
- [showPreviews](IOSNotificationSettings.md#showpreviews)
- [sound](IOSNotificationSettings.md#sound)

## Properties

### alert

• **alert**: [`IOSNotificationSetting`](../enums/IOSNotificationSetting.md)

Enum describing if notifications will alert the user.

#### Defined in

[src/types/NotificationIOS.ts:327](https://github.com/cabljac/react-native-notifee/blob/4d792c9/src/types/NotificationIOS.ts#L327)

___

### announcement

• **announcement**: [`IOSNotificationSetting`](../enums/IOSNotificationSetting.md)

Enum describing if notifications can be announced to the user
via 3rd party services such as Siri.

For example, if the notification can be automatically read by Siri
while the user is wearing AirPods.

#### Defined in

[src/types/NotificationIOS.ts:366](https://github.com/cabljac/react-native-notifee/blob/4d792c9/src/types/NotificationIOS.ts#L366)

___

### authorizationStatus

• **authorizationStatus**: [`IOSAuthorizationStatus`](../enums/IOSAuthorizationStatus.md)

Overall notification authorization status for the application.

#### Defined in

[src/types/NotificationIOS.ts:378](https://github.com/cabljac/react-native-notifee/blob/4d792c9/src/types/NotificationIOS.ts#L378)

___

### badge

• **badge**: [`IOSNotificationSetting`](../enums/IOSNotificationSetting.md)

Enum describing if notifications can update the application badge.

#### Defined in

[src/types/NotificationIOS.ts:332](https://github.com/cabljac/react-native-notifee/blob/4d792c9/src/types/NotificationIOS.ts#L332)

___

### carPlay

• **carPlay**: [`IOSNotificationSetting`](../enums/IOSNotificationSetting.md)

Enum describing if notifications can be displayed in a CarPlay environment.

#### Defined in

[src/types/NotificationIOS.ts:352](https://github.com/cabljac/react-native-notifee/blob/4d792c9/src/types/NotificationIOS.ts#L352)

___

### criticalAlert

• **criticalAlert**: [`IOSNotificationSetting`](../enums/IOSNotificationSetting.md)

Enum describing if critical notifications are allowed.

#### Defined in

[src/types/NotificationIOS.ts:337](https://github.com/cabljac/react-native-notifee/blob/4d792c9/src/types/NotificationIOS.ts#L337)

___

### inAppNotificationSettings

• **inAppNotificationSettings**: [`IOSNotificationSetting`](../enums/IOSNotificationSetting.md)

#### Defined in

[src/types/NotificationIOS.ts:373](https://github.com/cabljac/react-native-notifee/blob/4d792c9/src/types/NotificationIOS.ts#L373)

___

### lockScreen

• **lockScreen**: [`IOSNotificationSetting`](../enums/IOSNotificationSetting.md)

Enum describing if notifications will be displayed on the lock screen.

#### Defined in

[src/types/NotificationIOS.ts:357](https://github.com/cabljac/react-native-notifee/blob/4d792c9/src/types/NotificationIOS.ts#L357)

___

### notificationCenter

• **notificationCenter**: [`IOSNotificationSetting`](../enums/IOSNotificationSetting.md)

Enum describing if notifications will be displayed in the notification center.

#### Defined in

[src/types/NotificationIOS.ts:371](https://github.com/cabljac/react-native-notifee/blob/4d792c9/src/types/NotificationIOS.ts#L371)

___

### showPreviews

• **showPreviews**: [`IOSShowPreviewsSetting`](../enums/IOSShowPreviewsSetting.md)

Enum describing if notification previews will be shown.

#### Defined in

[src/types/NotificationIOS.ts:342](https://github.com/cabljac/react-native-notifee/blob/4d792c9/src/types/NotificationIOS.ts#L342)

___

### sound

• **sound**: [`IOSNotificationSetting`](../enums/IOSNotificationSetting.md)

Enum describing if notifications can trigger a sound.

#### Defined in

[src/types/NotificationIOS.ts:347](https://github.com/cabljac/react-native-notifee/blob/4d792c9/src/types/NotificationIOS.ts#L347)
