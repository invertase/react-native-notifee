[@notifee/react-native](../README.md) / [Exports](../modules.md) / IOSNotificationCategoryAction

# Interface: IOSNotificationCategoryAction

The interface used to describe a notification quick action for iOS.

Quick actions allow users to interact with notifications, allowing you to handle events
within your application. When an action completes (e.g. pressing an action, or filling out an input
box) an event is sent.

View the [Quick Actions](/react-native/docs/ios/interaction#quick-actions) documentation to learn more.

**`platform`** ios

## Table of contents

### Properties

- [authenticationRequired](IOSNotificationCategoryAction.md#authenticationrequired)
- [destructive](IOSNotificationCategoryAction.md#destructive)
- [foreground](IOSNotificationCategoryAction.md#foreground)
- [id](IOSNotificationCategoryAction.md#id)
- [input](IOSNotificationCategoryAction.md#input)
- [title](IOSNotificationCategoryAction.md#title)

## Properties

### authenticationRequired

• `Optional` **authenticationRequired**: `boolean`

Whether this action should require unlocking before being performed.

#### Defined in

[src/types/NotificationIOS.ts:557](https://github.com/cabljac/react-native-notifee/blob/4d792c9/src/types/NotificationIOS.ts#L557)

___

### destructive

• `Optional` **destructive**: `boolean`

Makes the action red, indicating that the action is destructive.

#### Defined in

[src/types/NotificationIOS.ts:547](https://github.com/cabljac/react-native-notifee/blob/4d792c9/src/types/NotificationIOS.ts#L547)

___

### foreground

• `Optional` **foreground**: `boolean`

Whether this action should cause the application to launch in the foreground.

#### Defined in

[src/types/NotificationIOS.ts:552](https://github.com/cabljac/react-native-notifee/blob/4d792c9/src/types/NotificationIOS.ts#L552)

___

### id

• **id**: `string`

#### Defined in

[src/types/NotificationIOS.ts:524](https://github.com/cabljac/react-native-notifee/blob/4d792c9/src/types/NotificationIOS.ts#L524)

___

### input

• `Optional` **input**: ``true`` \| [`IOSInput`](IOSInput.md)

If provided, the action accepts custom user input.

If `true`, the user will be able to provide free text input when the action is pressed.

The placeholder and button text can be customized by providing an object
of type [`IOSInput`](/react-native/reference/iosinput).

View the [Action Input](/react-native/docs/ios/interaction#action-input) documentation to
learn more.

#### Defined in

[src/types/NotificationIOS.ts:542](https://github.com/cabljac/react-native-notifee/blob/4d792c9/src/types/NotificationIOS.ts#L542)

___

### title

• **title**: `string`

The title of the action, e.g. "Reply", "Mark as read" etc.

#### Defined in

[src/types/NotificationIOS.ts:529](https://github.com/cabljac/react-native-notifee/blob/4d792c9/src/types/NotificationIOS.ts#L529)
