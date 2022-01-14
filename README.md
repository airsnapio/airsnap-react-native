# AirSnap for React Native

## Setup

To install with NPM:

```
npm i @airsnap/react-native
```

To install with Yarn:

```
yarn add @airsnap/react-native
```

Install the Pod library:

```
pod install
```

### Initialize the library

```
// App.js
import AirSnap from '@airsnap/react-native';

AirSnap.start("<api-key>")
```

### Privacy Mask

AirSnap prioritizes privacy and therefore enables privacy masking by default. You can disable the privacy mask by passing the following parameter to `AirSnap.start`

```
AirSnap.start("<api-key>", "unmask") // "mask" or "unmask"
```

### APIs

#### getSessionId

Returns the current session ID

```
const sessionId = await AirSnap.getSessionId()
```

#### getUserId

Returns the user ID that is used to distinguish users. This can be a custom identifier that you set, otherwise it will use the [IDFV Device ID](https://developer.apple.com/documentation/uikit/uidevice/1620059-identifierforvendor) by default.

```
const userId = await AirSnap.getUserId()
```

#### setUserId

Sets the user ID that is used to distinguish users. This can be the internal identifier for your application. If param is an **empty string** or `null`, it will reset the identifier back to the Device ID.

```
AirSnap.setUserId("john.doe@airsnap.io")

// Resets user id to device id. Ex: logging out
AirSnap.setUserId("")
AirSnap.setUserId()
```
