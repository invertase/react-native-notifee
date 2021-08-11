[@notifee/react-native](../README.md) / [Exports](../modules.md) / NativeAndroidChannel

# Interface: NativeAndroidChannel

An interface which describes a channel which has been fetched from the device.

Contains additional information which is only available when fetching the channel from the device.

**`platform`** android

## Hierarchy

- [`AndroidChannel`](AndroidChannel.md)

  ↳ **`NativeAndroidChannel`**

## Table of contents

### Properties

- [badge](NativeAndroidChannel.md#badge)
- [blocked](NativeAndroidChannel.md#blocked)
- [bypassDnd](NativeAndroidChannel.md#bypassdnd)
- [description](NativeAndroidChannel.md#description)
- [groupId](NativeAndroidChannel.md#groupid)
- [id](NativeAndroidChannel.md#id)
- [importance](NativeAndroidChannel.md#importance)
- [lightColor](NativeAndroidChannel.md#lightcolor)
- [lights](NativeAndroidChannel.md#lights)
- [name](NativeAndroidChannel.md#name)
- [sound](NativeAndroidChannel.md#sound)
- [soundURI](NativeAndroidChannel.md#sounduri)
- [vibration](NativeAndroidChannel.md#vibration)
- [vibrationPattern](NativeAndroidChannel.md#vibrationpattern)
- [visibility](NativeAndroidChannel.md#visibility)

## Properties

### badge

• `Optional` **badge**: `boolean`

Sets whether badges are enabled for the channel.

View the [Badges](/react-native/docs/android/appearance#badges) documentation to learn more.

Defaults to `true`.

This setting cannot be overridden once the channel is created.

#### Inherited from

[AndroidChannel](AndroidChannel.md).[badge](AndroidChannel.md#badge)

#### Defined in

[src/types/NotificationAndroid.ts:815](https://github.com/cabljac/react-native-notifee/blob/4d792c9/src/types/NotificationAndroid.ts#L815)

___

### blocked

• **blocked**: `boolean`

#### Defined in

[src/types/NotificationAndroid.ts:939](https://github.com/cabljac/react-native-notifee/blob/4d792c9/src/types/NotificationAndroid.ts#L939)

___

### bypassDnd

• `Optional` **bypassDnd**: `boolean`

Sets whether or not notifications posted to this channel can interrupt the user in
'Do Not Disturb' mode.

Defaults to `false`.

This setting cannot be overridden once the channel is created.

**`platform`** android API Level >= 29

#### Inherited from

[AndroidChannel](AndroidChannel.md).[bypassDnd](AndroidChannel.md#bypassdnd)

#### Defined in

[src/types/NotificationAndroid.ts:827](https://github.com/cabljac/react-native-notifee/blob/4d792c9/src/types/NotificationAndroid.ts#L827)

___

### description

• `Optional` **description**: `string`

Sets the user visible description of this channel.

The recommended maximum length is 300 characters; the value may be truncated if it is too long.

This setting can be updated after creation.

**`platform`** android API Level >= 28

#### Inherited from

[AndroidChannel](AndroidChannel.md).[description](AndroidChannel.md#description)

#### Defined in

[src/types/NotificationAndroid.ts:838](https://github.com/cabljac/react-native-notifee/blob/4d792c9/src/types/NotificationAndroid.ts#L838)

___

### groupId

• `Optional` **groupId**: `string`

Sets what group this channel belongs to. Group information is only used for presentation, not for behavior.

Groups can be created via via [`createChannelGroup`](/react-native/reference/createchannelgroup).

This setting cannot be overridden once the channel is created.

#### Inherited from

[AndroidChannel](AndroidChannel.md).[groupId](AndroidChannel.md#groupid)

#### Defined in

[src/types/NotificationAndroid.ts:865](https://github.com/cabljac/react-native-notifee/blob/4d792c9/src/types/NotificationAndroid.ts#L865)

___

### id

• **id**: `string`

The unique channel ID.

#### Inherited from

[AndroidChannel](AndroidChannel.md).[id](AndroidChannel.md#id)

#### Defined in

[src/types/NotificationAndroid.ts:796](https://github.com/cabljac/react-native-notifee/blob/4d792c9/src/types/NotificationAndroid.ts#L796)

___

### importance

• `Optional` **importance**: [`AndroidImportance`](../enums/AndroidImportance.md)

Sets the level of interruption of this notification channel.

Defaults to `AndroidImportance.DEFAULT`.

This setting can only be set to a lower importance level once set.

#### Inherited from

[AndroidChannel](AndroidChannel.md).[importance](AndroidChannel.md#importance)

#### Defined in

[src/types/NotificationAndroid.ts:874](https://github.com/cabljac/react-native-notifee/blob/4d792c9/src/types/NotificationAndroid.ts#L874)

___

### lightColor

• `Optional` **lightColor**: `string`

If lights are enabled (via `lights`), sets/overrides the light color for notifications
posted to this channel.

This setting cannot be overridden once the channel is created.

#### Inherited from

[AndroidChannel](AndroidChannel.md).[lightColor](AndroidChannel.md#lightcolor)

#### Defined in

[src/types/NotificationAndroid.ts:882](https://github.com/cabljac/react-native-notifee/blob/4d792c9/src/types/NotificationAndroid.ts#L882)

___

### lights

• `Optional` **lights**: `boolean`

Sets whether notifications posted to this channel should display notification lights, on devices that support that feature.

Defaults to `true`.

This setting cannot be overridden once the channel is created.

#### Inherited from

[AndroidChannel](AndroidChannel.md).[lights](AndroidChannel.md#lights)

#### Defined in

[src/types/NotificationAndroid.ts:847](https://github.com/cabljac/react-native-notifee/blob/4d792c9/src/types/NotificationAndroid.ts#L847)

___

### name

• **name**: `string`

The channel name. This is shown to the user so must be descriptive and relate to the notifications
which will be delivered under this channel.

This setting can be updated after creation.

#### Inherited from

[AndroidChannel](AndroidChannel.md).[name](AndroidChannel.md#name)

#### Defined in

[src/types/NotificationAndroid.ts:804](https://github.com/cabljac/react-native-notifee/blob/4d792c9/src/types/NotificationAndroid.ts#L804)

___

### sound

• `Optional` **sound**: `string`

Overrides the sound the notification is displayed with.

The default value is to play no sound. To play the default system sound use 'default'.

This setting cannot be overridden once the channel is created.

#### Inherited from

[AndroidChannel](AndroidChannel.md).[sound](AndroidChannel.md#sound)

#### Defined in

[src/types/NotificationAndroid.ts:910](https://github.com/cabljac/react-native-notifee/blob/4d792c9/src/types/NotificationAndroid.ts#L910)

___

### soundURI

• `Optional` **soundURI**: `string`

The URI of the notification sound associated with the channel, if any.

This is a read-only value, and is under user control after the channel is created

#### Inherited from

[AndroidChannel](AndroidChannel.md).[soundURI](AndroidChannel.md#sounduri)

#### Defined in

[src/types/NotificationAndroid.ts:917](https://github.com/cabljac/react-native-notifee/blob/4d792c9/src/types/NotificationAndroid.ts#L917)

___

### vibration

• `Optional` **vibration**: `boolean`

Sets whether notification posted to this channel should vibrate.

Defaults to `true`.

This setting cannot be overridden once the channel is created.

#### Inherited from

[AndroidChannel](AndroidChannel.md).[vibration](AndroidChannel.md#vibration)

#### Defined in

[src/types/NotificationAndroid.ts:856](https://github.com/cabljac/react-native-notifee/blob/4d792c9/src/types/NotificationAndroid.ts#L856)

___

### vibrationPattern

• `Optional` **vibrationPattern**: `number`[]

Sets/overrides the vibration pattern for notifications posted to this channel.

The pattern in milliseconds. Must be an even amount of numbers.

This setting cannot be overridden once the channel is created.

#### Inherited from

[AndroidChannel](AndroidChannel.md).[vibrationPattern](AndroidChannel.md#vibrationpattern)

#### Defined in

[src/types/NotificationAndroid.ts:901](https://github.com/cabljac/react-native-notifee/blob/4d792c9/src/types/NotificationAndroid.ts#L901)

___

### visibility

• `Optional` **visibility**: [`AndroidVisibility`](../enums/AndroidVisibility.md)

Sets whether notifications posted to this channel appear on the lockscreen or not,
and if so, whether they appear in a redacted form.

Defaults to `AndroidVisibility.PRIVATE`.

This setting cannot be overridden once the channel is created.

#### Inherited from

[AndroidChannel](AndroidChannel.md).[visibility](AndroidChannel.md#visibility)

#### Defined in

[src/types/NotificationAndroid.ts:892](https://github.com/cabljac/react-native-notifee/blob/4d792c9/src/types/NotificationAndroid.ts#L892)
