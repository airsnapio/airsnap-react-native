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
