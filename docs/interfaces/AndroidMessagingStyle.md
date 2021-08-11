[@notifee/react-native](../README.md) / [Exports](../modules.md) / AndroidMessagingStyle

# Interface: AndroidMessagingStyle

The interface used when displaying a Messaging Style notification.

<Vimeo id="android-style-messaging" caption="Android Messaging Style" />

View the [Messaging](/react-native/docs/android/styles#messaging) documentation to learn more.

**`platform`** android

## Table of contents

### Properties

- [group](AndroidMessagingStyle.md#group)
- [messages](AndroidMessagingStyle.md#messages)
- [person](AndroidMessagingStyle.md#person)
- [title](AndroidMessagingStyle.md#title)
- [type](AndroidMessagingStyle.md#type)

## Properties

### group

• `Optional` **group**: `boolean`

Sets whether this conversation notification represents a group (3 or more persons).

#### Defined in

[src/types/NotificationAndroid.ts:657](https://github.com/cabljac/react-native-notifee/blob/4d792c9/src/types/NotificationAndroid.ts#L657)

___

### messages

• **messages**: [`AndroidMessagingStyleMessage`](AndroidMessagingStyleMessage.md)[]

An array of messages to display inside the notification.

#### Defined in

[src/types/NotificationAndroid.ts:647](https://github.com/cabljac/react-native-notifee/blob/4d792c9/src/types/NotificationAndroid.ts#L647)

___

### person

• **person**: [`AndroidPerson`](AndroidPerson.md)

The person who is receiving a message on the current device.

#### Defined in

[src/types/NotificationAndroid.ts:642](https://github.com/cabljac/react-native-notifee/blob/4d792c9/src/types/NotificationAndroid.ts#L642)

___

### title

• `Optional` **title**: `string`

If set, overrides the main notification `title` when the notification is expanded.

#### Defined in

[src/types/NotificationAndroid.ts:652](https://github.com/cabljac/react-native-notifee/blob/4d792c9/src/types/NotificationAndroid.ts#L652)

___

### type

• **type**: [`MESSAGING`](../enums/AndroidStyle.md#messaging)

Constant enum value used to identify the style type.

#### Defined in

[src/types/NotificationAndroid.ts:637](https://github.com/cabljac/react-native-notifee/blob/4d792c9/src/types/NotificationAndroid.ts#L637)
