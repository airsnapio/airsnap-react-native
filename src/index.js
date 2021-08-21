import { NativeModules } from "react-native";

export async function start(key) {
  return NativeModules.AirSnapReactNative.start(key);
}
