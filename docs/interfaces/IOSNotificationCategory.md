[@notifee/react-native](../README.md) / [Exports](../modules.md) / IOSNotificationCategory

# Interface: IOSNotificationCategory

A interface representing a notification category created via [`setNotificationCategories`](/react-native/reference/setnotificationcategories).

At minimum, a category must be created with a unique identifier, all other properties are optional.

View the [Categories](/react-native/docs/ios/categories) documentation to learn more.

**`platform`** ios

## Table of contents

### Properties

- [actions](IOSNotificationCategory.md#actions)
- [allowAnnouncement](IOSNotificationCategory.md#allowannouncement)
- [allowInCarPlay](IOSNotificationCategory.md#allowincarplay)
- [hiddenPreviewsBodyPlaceholder](IOSNotificationCategory.md#hiddenpreviewsbodyplaceholder)
- [hiddenPreviewsShowSubtitle](IOSNotificationCategory.md#hiddenpreviewsshowsubtitle)
- [hiddenPreviewsShowTitle](IOSNotificationCategory.md#hiddenpreviewsshowtitle)
- [id](IOSNotificationCategory.md#id)
- [intentIdentifiers](IOSNotificationCategory.md#intentidentifiers)
- [summaryFormat](IOSNotificationCategory.md#summaryformat)

## Properties

### actions

• `Optional` **actions**: [`IOSNotificationCategoryAction`](IOSNotificationCategoryAction.md)[]

#### Defined in

[src/types/NotificationIOS.ts:509](https://github.com/cabljac/react-native-notifee/blob/4d792c9/src/types/NotificationIOS.ts#L509)

___

### allowAnnouncement

• `Optional` **allowAnnouncement**: `boolean`

#### Defined in

[src/types/NotificationIOS.ts:476](https://github.com/cabljac/react-native-notifee/blob/4d792c9/src/types/NotificationIOS.ts#L476)

___

### allowInCarPlay

• `Optional` **allowInCarPlay**: `boolean`

Allow notifications in this category to be displayed in a CarPlay environment.

Defaults to `false`.

#### Defined in

[src/types/NotificationIOS.ts:465](https://github.com/cabljac/react-native-notifee/blob/4d792c9/src/types/NotificationIOS.ts#L465)

___

### hiddenPreviewsBodyPlaceholder

• `Optional` **hiddenPreviewsBodyPlaceholder**: `string`

#### Defined in

[src/types/NotificationIOS.ts:497](https://github.com/cabljac/react-native-notifee/blob/4d792c9/src/types/NotificationIOS.ts#L497)

___

### hiddenPreviewsShowSubtitle

• `Optional` **hiddenPreviewsShowSubtitle**: `boolean`

#### Defined in

[src/types/NotificationIOS.ts:490](https://github.com/cabljac/react-native-notifee/blob/4d792c9/src/types/NotificationIOS.ts#L490)

___

### hiddenPreviewsShowTitle

• `Optional` **hiddenPreviewsShowTitle**: `boolean`

#### Defined in

[src/types/NotificationIOS.ts:483](https://github.com/cabljac/react-native-notifee/blob/4d792c9/src/types/NotificationIOS.ts#L483)

___

### id

• **id**: `string`

The unique ID for the category.

#### Defined in

[src/types/NotificationIOS.ts:451](https://github.com/cabljac/react-native-notifee/blob/4d792c9/src/types/NotificationIOS.ts#L451)

___

### intentIdentifiers

• `Optional` **intentIdentifiers**: [`IOSIntentIdentifier`](../enums/IOSIntentIdentifier.md)[]

#### Defined in

[src/types/NotificationIOS.ts:499](https://github.com/cabljac/react-native-notifee/blob/4d792c9/src/types/NotificationIOS.ts#L499)

___

### summaryFormat

• `Optional` **summaryFormat**: `string`

Specify a custom format for the summary text, which is visible when notifications are grouped together.

View the [Summary Text](/react-native/docs/ios/categories#category-summary-text) documentation to learn more.

#### Defined in

[src/types/NotificationIOS.ts:458](https://github.com/cabljac/react-native-notifee/blob/4d792c9/src/types/NotificationIOS.ts#L458)
