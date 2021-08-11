[@notifee/react-native](../README.md) / [Exports](../modules.md) / EventDetail

# Interface: EventDetail

An interface representing the different detail values which can be provided with a notification event.

View the [Events](/react-native/docs/events) documentation to learn more.

## Table of contents

### Properties

- [blocked](EventDetail.md#blocked)
- [channel](EventDetail.md#channel)
- [channelGroup](EventDetail.md#channelgroup)
- [input](EventDetail.md#input)
- [notification](EventDetail.md#notification)
- [pressAction](EventDetail.md#pressaction)

## Properties

### blocked

• `Optional` **blocked**: `boolean`

The notification blocked status of your entire application.

The blocked detail is available when the event type is [`EventType.APP_BLOCKED`](/react-native/reference/eventtype#app_blocked).

**`platform`** android API Level >= 28

#### Defined in

[src/types/Notification.ts:433](https://github.com/cabljac/react-native-notifee/blob/4d792c9/src/types/Notification.ts#L433)

___

### channel

• `Optional` **channel**: [`NativeAndroidChannel`](NativeAndroidChannel.md)

The channel that had its block state changed.

Note that if the channel no longer exists during the time the event was sent the channel property will be undefined.

The channel detail is available when the event type is [`EventType.CHANNEL_BLOCKED`](/react-native/reference/eventtype#channel_blocked).

**`platform`** android API Level >= 28

#### Defined in

[src/types/Notification.ts:413](https://github.com/cabljac/react-native-notifee/blob/4d792c9/src/types/Notification.ts#L413)

___

### channelGroup

• `Optional` **channelGroup**: [`NativeAndroidChannelGroup`](NativeAndroidChannelGroup.md)

The channel group that had its block state changed.

Note that if the channel no longer exists during the time the event was sent the channel group property will be undefined.

The channel group detail is available when the event type is [`EventType.CHANNEL_GROUP_BLOCKED`](/react-native/reference/eventtype#channel_group_blocked).

**`platform`** android API Level >= 28

#### Defined in

[src/types/Notification.ts:424](https://github.com/cabljac/react-native-notifee/blob/4d792c9/src/types/Notification.ts#L424)

___

### input

• `Optional` **input**: `string`

The input from a notification action.

The input detail is available when the [`EventType`](/react-native/reference/eventtype) is:

- [`EventType.ACTION_PRESS`](/react-native/reference/eventtype#action_press)
- The notification quick action has input enabled. View [`AndroidInput`](/react-native/reference/androidinput) for more details.

**`platform`** android API Level >= 20

#### Defined in

[src/types/Notification.ts:402](https://github.com/cabljac/react-native-notifee/blob/4d792c9/src/types/Notification.ts#L402)

___

### notification

• `Optional` **notification**: [`Notification`](Notification.md)

The notification this event relates to.

The notification details is available when the [`EventType`](/react-native/reference/eventtype) is one of:

 - [`EventType.DISMISSED`](/react-native/reference/eventtype#dismissed)
 - [`EventType.PRESS`](/react-native/reference/eventtype#press)
 - [`EventType.ACTION_PRESS`](/react-native/reference/eventtype#action_press)
 - [`EventType.DELIVERED`](/react-native/reference/eventtype#delivered)
 - [`EventType.TRIGGER_NOTIFICATION_CREATED`](/react-native/reference/eventtype#trigger_notification_created)

#### Defined in

[src/types/Notification.ts:377](https://github.com/cabljac/react-native-notifee/blob/4d792c9/src/types/Notification.ts#L377)

___

### pressAction

• `Optional` **pressAction**: [`NotificationPressAction`](NotificationPressAction.md)

The press action which triggered the event.

If a press action caused the event, this property will be available allowing you to retrieve the
action ID and perform logic.

The press action details is available when the [`EventType`](/react-native/reference/eventtype) is one of:

- [`EventType.PRESS`](/react-native/reference/eventtype#press)
- [`EventType.ACTION_PRESS`](/react-native/reference/eventtype#action_press)

#### Defined in

[src/types/Notification.ts:390](https://github.com/cabljac/react-native-notifee/blob/4d792c9/src/types/Notification.ts#L390)
