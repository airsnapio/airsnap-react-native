import { NativeModules, Platform } from "react-native";

export function start(key) {
  // We only support iOS at the moment
  if (Platform.OS === "ios") {
    NativeModules.AirSnapReactNative.start(key);
  }
}

export function setUser(key) {
  // We only support iOS at the moment
  if (Platform.OS === "ios") {
    NativeModules.AirSnapReactNative.setUser(key);
  }
}

export default {
  start,
  setUser,
};
