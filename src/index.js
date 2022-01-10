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

export async function getSessionId() {
  if (Platform.OS === "ios") {
    const sessionId = await NativeModules.AirSnapReactNative.getSessionId();
    return sessionId;
  }
}

export async function getUserId() {
  if (Platform.OS === "ios") {
    const userId = await NativeModules.AirSnapReactNative.getUserId();
    return userId;
  }
}

export function setUserId(id) {
  // We only support iOS at the moment
  if (Platform.OS === "ios") {
    NativeModules.AirSnapReactNative.setUserId(id);
  }
}

export default {
  start,
  getSessionId,
  getUserId,
  setUserId,
};
