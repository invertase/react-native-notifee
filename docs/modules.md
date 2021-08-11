[@notifee/react-native](README.md) / Exports

# @notifee/react-native

## Table of contents

### Enumerations

- [AndroidBadgeIconType](enums/AndroidBadgeIconType.md)
- [AndroidCategory](enums/AndroidCategory.md)
- [AndroidColor](enums/AndroidColor.md)
- [AndroidDefaults](enums/AndroidDefaults.md)
- [AndroidGroupAlertBehavior](enums/AndroidGroupAlertBehavior.md)
- [AndroidImportance](enums/AndroidImportance.md)
- [AndroidLaunchActivityFlag](enums/AndroidLaunchActivityFlag.md)
- [AndroidStyle](enums/AndroidStyle.md)
- [AndroidVisibility](enums/AndroidVisibility.md)
- [EventType](enums/EventType.md)
- [IOSAuthorizationStatus](enums/IOSAuthorizationStatus.md)
- [IOSIntentIdentifier](enums/IOSIntentIdentifier.md)
- [IOSNotificationSetting](enums/IOSNotificationSetting.md)
- [IOSShowPreviewsSetting](enums/IOSShowPreviewsSetting.md)
- [RepeatFrequency](enums/RepeatFrequency.md)
- [TimeUnit](enums/TimeUnit.md)
- [TriggerType](enums/TriggerType.md)

### Interfaces

- [AndroidAction](interfaces/AndroidAction.md)
- [AndroidBigPictureStyle](interfaces/AndroidBigPictureStyle.md)
- [AndroidBigTextStyle](interfaces/AndroidBigTextStyle.md)
- [AndroidChannel](interfaces/AndroidChannel.md)
- [AndroidChannelGroup](interfaces/AndroidChannelGroup.md)
- [AndroidInboxStyle](interfaces/AndroidInboxStyle.md)
- [AndroidInput](interfaces/AndroidInput.md)
- [AndroidMessagingStyle](interfaces/AndroidMessagingStyle.md)
- [AndroidMessagingStyleMessage](interfaces/AndroidMessagingStyleMessage.md)
- [AndroidPerson](interfaces/AndroidPerson.md)
- [AndroidProgress](interfaces/AndroidProgress.md)
- [DisplayedNotification](interfaces/DisplayedNotification.md)
- [Event](interfaces/Event.md)
- [EventDetail](interfaces/EventDetail.md)
- [IOSAttachmentThumbnailClippingRect](interfaces/IOSAttachmentThumbnailClippingRect.md)
- [IOSForegroundPresentationOptions](interfaces/IOSForegroundPresentationOptions.md)
- [IOSInput](interfaces/IOSInput.md)
- [IOSNotificationAttachment](interfaces/IOSNotificationAttachment.md)
- [IOSNotificationCategory](interfaces/IOSNotificationCategory.md)
- [IOSNotificationCategoryAction](interfaces/IOSNotificationCategoryAction.md)
- [IOSNotificationPermissions](interfaces/IOSNotificationPermissions.md)
- [IOSNotificationSettings](interfaces/IOSNotificationSettings.md)
- [InitialNotification](interfaces/InitialNotification.md)
- [IntervalTrigger](interfaces/IntervalTrigger.md)
- [NativeAndroidChannel](interfaces/NativeAndroidChannel.md)
- [NativeAndroidChannelGroup](interfaces/NativeAndroidChannelGroup.md)
- [NativeError](interfaces/NativeError.md)
- [Notification](interfaces/Notification.md)
- [NotificationAndroid](interfaces/NotificationAndroid.md)
- [NotificationFullScreenAction](interfaces/NotificationFullScreenAction.md)
- [NotificationIOS](interfaces/NotificationIOS.md)
- [NotificationPressAction](interfaces/NotificationPressAction.md)
- [TimestampTrigger](interfaces/TimestampTrigger.md)
- [TimestampTriggerAlarmManager](interfaces/TimestampTriggerAlarmManager.md)
- [TriggerNotification](interfaces/TriggerNotification.md)

### Type aliases

- [ForegroundServiceTask](modules.md#foregroundservicetask)
- [Trigger](modules.md#trigger)

### Variables

- [default](modules.md#default)

## Type aliases

### ForegroundServiceTask

Ƭ **ForegroundServiceTask**: (`notification`: [`Notification`](interfaces/Notification.md)) => `Promise`<`void`\>

#### Type declaration

▸ (`notification`): `Promise`<`void`\>

A representation of a Foreground Service task registered via [`registerForegroundService`](/react-native/reference/registerforegroundservice).

The task must resolve a promise once complete, and in turn removes the notification.

View the [Foreground Service](/react-native/docs/android/foreground-service) documentation to
learn more.

##### Parameters

| Name | Type |
| :------ | :------ |
| `notification` | [`Notification`](interfaces/Notification.md) |

##### Returns

`Promise`<`void`\>

#### Defined in

[src/types/Notification.ts:176](https://github.com/cabljac/react-native-notifee/blob/4d792c9/src/types/Notification.ts#L176)

___

### Trigger

Ƭ **Trigger**: [`TimestampTrigger`](interfaces/TimestampTrigger.md) \| [`IntervalTrigger`](interfaces/IntervalTrigger.md)

#### Defined in

[src/types/Trigger.ts:116](https://github.com/cabljac/react-native-notifee/blob/4d792c9/src/types/Trigger.ts#L116)

## Variables

### default

• `Const` **default**: `ModuleWithStatics`

#### Defined in

[src/index.ts:26](https://github.com/cabljac/react-native-notifee/blob/4d792c9/src/index.ts#L26)
