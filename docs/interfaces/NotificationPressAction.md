[@notifee/react-native](../README.md) / [Exports](../modules.md) / NotificationPressAction

# Interface: NotificationPressAction

The interface used to describe a press action for a notification.

There are various ways a user can interact with a notification, the most common being pressing
the notification, pressing an action or providing text input. This interface defines what happens
when a user performs such interaction.

On Android; when provided to a notification action, the action will only open you application if
a `launchActivity` and/or a `mainComponent` is provided.

## Table of contents

### Properties

- [id](NotificationPressAction.md#id)
- [launchActivity](NotificationPressAction.md#launchactivity)
- [launchActivityFlags](NotificationPressAction.md#launchactivityflags)
- [mainComponent](NotificationPressAction.md#maincomponent)

## Properties

### id

• **id**: `string`

The unique ID for the action.

The `id` property is used to differentiate between user press actions. When listening to notification
events, the ID can be read from the `event.detail.pressAction` object.

#### Defined in

[src/types/Notification.ts:195](https://github.com/cabljac/react-native-notifee/blob/4d792c9/src/types/Notification.ts#L195)

___

### launchActivity

• `Optional` **launchActivity**: `string`

The custom Android Activity to launch on a press action.

This property can be used in advanced scenarios to launch a custom Android Activity when the user
performs a press action.

View the [Android Interaction](/react-native/docs/android/interaction) docs to learn more.

**`platform`** android

#### Defined in

[src/types/Notification.ts:207](https://github.com/cabljac/react-native-notifee/blob/4d792c9/src/types/Notification.ts#L207)

___

### launchActivityFlags

• `Optional` **launchActivityFlags**: [`AndroidLaunchActivityFlag`](../enums/AndroidLaunchActivityFlag.md)[]

Custom flags that are added to the Android [Intent](https://developer.android.com/reference/android/content/Intent.html) that launches your Activity.

These are only required if you need to customise the behaviour of how your activities are launched; by default these are not required.

**`platform`** android

#### Defined in

[src/types/Notification.ts:216](https://github.com/cabljac/react-native-notifee/blob/4d792c9/src/types/Notification.ts#L216)

___

### mainComponent

• `Optional` **mainComponent**: `string`

A custom registered React component to launch on press action.

This property can be used to open a custom React component when the user performs a press action.
For this to correctly function on Android, a minor native code change is required.

View the [Press Action](/react-native/docs/android/interaction#press-action) document to learn more.

**`platform`** android

#### Defined in

[src/types/Notification.ts:228](https://github.com/cabljac/react-native-notifee/blob/4d792c9/src/types/Notification.ts#L228)
