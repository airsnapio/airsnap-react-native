import {
  NativeModules,
  Platform,
} from 'react-native';

export function start(key, privacyRule = "mask") {
  // We only support iOS at the moment
  if (Platform.OS === "ios") {
    NativeModules.AirSnapReactNative.start(key, privacyRule);
  }
}

export function setUser(id) {
  // We only support iOS at the moment
  if (Platform.OS === "ios") {
    NativeModules.AirSnapReactNative.setUser(id);
  }
}

export default {
  start,
  setUser,
};
