[@notifee/react-native](../README.md) / [Exports](../modules.md) / IOSShowPreviewsSetting

# Enumeration: IOSShowPreviewsSetting

An enum representing the show previews notification setting for this app on the device.

Value is greater than 0 if previews are to be shown, compare against an exact value
(e.g. WHEN_AUTHENTICATED) for more granular control.

**`platform`** ios

## Table of contents

### Enumeration members

- [ALWAYS](IOSShowPreviewsSetting.md#always)
- [NEVER](IOSShowPreviewsSetting.md#never)
- [NOT\_SUPPORTED](IOSShowPreviewsSetting.md#not_supported)
- [WHEN\_AUTHENTICATED](IOSShowPreviewsSetting.md#when_authenticated)

## Enumeration members

### ALWAYS

• **ALWAYS** = `1`

Always show previews even if the device is currently locked.

#### Defined in

[src/types/NotificationIOS.ts:279](https://github.com/cabljac/react-native-notifee/blob/4d792c9/src/types/NotificationIOS.ts#L279)

___

### NEVER

• **NEVER** = `0`

Never show previews.

#### Defined in

[src/types/NotificationIOS.ts:274](https://github.com/cabljac/react-native-notifee/blob/4d792c9/src/types/NotificationIOS.ts#L274)

___

### NOT\_SUPPORTED

• **NOT\_SUPPORTED** = `-1`

This setting is not supported on this device. Usually this means that the iOS version required
for this setting (iOS 11+) has not been met.

#### Defined in

[src/types/NotificationIOS.ts:269](https://github.com/cabljac/react-native-notifee/blob/4d792c9/src/types/NotificationIOS.ts#L269)

___

### WHEN\_AUTHENTICATED

• **WHEN\_AUTHENTICATED** = `2`

Only show previews when the device is unlocked.

#### Defined in

[src/types/NotificationIOS.ts:284](https://github.com/cabljac/react-native-notifee/blob/4d792c9/src/types/NotificationIOS.ts#L284)
