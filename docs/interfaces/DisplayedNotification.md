[@notifee/react-native](../README.md) / [Exports](../modules.md) / DisplayedNotification

# Interface: DisplayedNotification

An interface representing a notification that is currently displayed in the notification tray.

## Table of contents

### Properties

- [date](DisplayedNotification.md#date)
- [id](DisplayedNotification.md#id)
- [notification](DisplayedNotification.md#notification)
- [trigger](DisplayedNotification.md#trigger)

## Properties

### date

• `Optional` **date**: `string`

Date the notification was shown to the user

#### Defined in

[src/types/Notification.ts:116](https://github.com/cabljac/react-native-notifee/blob/4d792c9/src/types/Notification.ts#L116)

___

### id

• `Optional` **id**: `string`

ID of the notification

#### Defined in

[src/types/Notification.ts:111](https://github.com/cabljac/react-native-notifee/blob/4d792c9/src/types/Notification.ts#L111)

___

### notification

• **notification**: [`Notification`](Notification.md)

The payload that was used to create the notification (if available)

#### Defined in

[src/types/Notification.ts:121](https://github.com/cabljac/react-native-notifee/blob/4d792c9/src/types/Notification.ts#L121)

___

### trigger

• **trigger**: [`Trigger`](../modules.md#trigger)

The trigger that was used to schedule the notification (if available)

**`platform`** iOS

#### Defined in

[src/types/Notification.ts:128](https://github.com/cabljac/react-native-notifee/blob/4d792c9/src/types/Notification.ts#L128)
