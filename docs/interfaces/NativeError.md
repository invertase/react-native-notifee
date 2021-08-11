[@notifee/react-native](../README.md) / [Exports](../modules.md) / NativeError

# Interface: NativeError

An Error that has occurred in native Android or iOS code converted into a JavaScript Error.

## Hierarchy

- `Error`

  ↳ **`NativeError`**

## Table of contents

### Properties

- [code](NativeError.md#code)
- [message](NativeError.md#message)
- [name](NativeError.md#name)
- [nativeErrorCode](NativeError.md#nativeerrorcode)
- [nativeErrorMessage](NativeError.md#nativeerrormessage)
- [stack](NativeError.md#stack)

## Properties

### code

• `Readonly` **code**: `string`

Error code, e.g. `invalid-parameter`

#### Defined in

[src/types/Library.ts:12](https://github.com/cabljac/react-native-notifee/blob/4d792c9/src/types/Library.ts#L12)

___

### message

• `Readonly` **message**: `string`

Error message

#### Overrides

Error.message

#### Defined in

[src/types/Library.ts:17](https://github.com/cabljac/react-native-notifee/blob/4d792c9/src/types/Library.ts#L17)

___

### name

• **name**: `string`

#### Inherited from

Error.name

#### Defined in

node_modules/typescript/lib/lib.es5.d.ts:973

___

### nativeErrorCode

• `Readonly` **nativeErrorCode**: `string` \| `number`

The native returned error code, different per platform

#### Defined in

[src/types/Library.ts:22](https://github.com/cabljac/react-native-notifee/blob/4d792c9/src/types/Library.ts#L22)

___

### nativeErrorMessage

• `Readonly` **nativeErrorMessage**: `string`

The native returned error message, different per platform

#### Defined in

[src/types/Library.ts:27](https://github.com/cabljac/react-native-notifee/blob/4d792c9/src/types/Library.ts#L27)

___

### stack

• `Optional` **stack**: `string`

#### Inherited from

Error.stack

#### Defined in

node_modules/typescript/lib/lib.es5.d.ts:975
