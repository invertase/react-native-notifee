[@notifee/react-native](../README.md) / [Exports](../modules.md) / AndroidMessagingStyleMessage

# Interface: AndroidMessagingStyleMessage

The interface for messages when constructing a Messaging Style notification.

<Vimeo id="android-style-messaging" caption="Android Messaging Style" />

View the [`AndroidMessagingStyle`](/react-native/reference/androidmessagingstyle) reference
and [Messaging](/react-native/docs/android/styles#messaging) documentation to learn more.

**`platform`** android

## Table of contents

### Properties

- [person](AndroidMessagingStyleMessage.md#person)
- [text](AndroidMessagingStyleMessage.md#text)
- [timestamp](AndroidMessagingStyleMessage.md#timestamp)

## Properties

### person

• `Optional` **person**: [`AndroidPerson`](AndroidPerson.md)

The sender of this message. See [`AndroidPerson`](/react-native/reference/androidperson) reference
for more information on the properties available.

This property should only be provided if the message is from an external person, and not the person receiving the message.

#### Defined in

[src/types/NotificationAndroid.ts:687](https://github.com/cabljac/react-native-notifee/blob/4d792c9/src/types/NotificationAndroid.ts#L687)

___

### text

• **text**: `string`

The content of the message.

#### Defined in

[src/types/NotificationAndroid.ts:674](https://github.com/cabljac/react-native-notifee/blob/4d792c9/src/types/NotificationAndroid.ts#L674)

___

### timestamp

• **timestamp**: `number`

The timestamp of when the message arrived in milliseconds.

#### Defined in

[src/types/NotificationAndroid.ts:679](https://github.com/cabljac/react-native-notifee/blob/4d792c9/src/types/NotificationAndroid.ts#L679)
