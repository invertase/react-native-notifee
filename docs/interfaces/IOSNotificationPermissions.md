[@notifee/react-native](../README.md) / [Exports](../modules.md) / IOSNotificationPermissions

# Interface: IOSNotificationPermissions

An interface representing all the available permissions that can be requested by your app via
the [`requestPermission`](/react-native/reference/requestpermission) API.

View the [Permissions](/react-native/docs/ios/permissions) to learn
more.

**`platform`** ios

## Table of contents

### Properties

- [alert](IOSNotificationPermissions.md#alert)
- [announcement](IOSNotificationPermissions.md#announcement)
- [badge](IOSNotificationPermissions.md#badge)
- [carPlay](IOSNotificationPermissions.md#carplay)
- [criticalAlert](IOSNotificationPermissions.md#criticalalert)
- [provisional](IOSNotificationPermissions.md#provisional)
- [sound](IOSNotificationPermissions.md#sound)

## Properties

### alert

• `Optional` **alert**: `boolean`

Request permission to display alerts.

Defaults to true.

#### Defined in

[src/types/NotificationIOS.ts:159](https://github.com/cabljac/react-native-notifee/blob/4d792c9/src/types/NotificationIOS.ts#L159)

___

### announcement

• `Optional` **announcement**: `boolean`

Request permission for Siri to automatically read out notification messages over AirPods.

Defaults to false.

**`platform`** ios iOS >= 13

#### Defined in

[src/types/NotificationIOS.ts:208](https://github.com/cabljac/react-native-notifee/blob/4d792c9/src/types/NotificationIOS.ts#L208)

___

### badge

• `Optional` **badge**: `boolean`

Request permission to update the application badge.

Defaults to true.

#### Defined in

[src/types/NotificationIOS.ts:176](https://github.com/cabljac/react-native-notifee/blob/4d792c9/src/types/NotificationIOS.ts#L176)

___

### carPlay

• `Optional` **carPlay**: `boolean`

Request permission to display notifications in a CarPlay environment.

Defaults to true.

#### Defined in

[src/types/NotificationIOS.ts:190](https://github.com/cabljac/react-native-notifee/blob/4d792c9/src/types/NotificationIOS.ts#L190)

___

### criticalAlert

• `Optional` **criticalAlert**: `boolean`

Request permission to display critical notifications.

View the [Critical Notifications](/react-native/docs/ios/behaviour#critical-notifications) documentation for more information
and usage examples.

Defaults to false.

#### Defined in

[src/types/NotificationIOS.ts:169](https://github.com/cabljac/react-native-notifee/blob/4d792c9/src/types/NotificationIOS.ts#L169)

___

### provisional

• `Optional` **provisional**: `boolean`

Request permission to provisionally create non-interrupting notifications.

Defaults to false.

**`platform`** ios iOS >= 12

#### Defined in

[src/types/NotificationIOS.ts:199](https://github.com/cabljac/react-native-notifee/blob/4d792c9/src/types/NotificationIOS.ts#L199)

___

### sound

• `Optional` **sound**: `boolean`

Request permission to play sounds.

Defaults to true.

#### Defined in

[src/types/NotificationIOS.ts:183](https://github.com/cabljac/react-native-notifee/blob/4d792c9/src/types/NotificationIOS.ts#L183)
