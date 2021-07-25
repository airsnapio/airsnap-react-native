import { NativeModules } from "react-native";

export async function start() {
  return NativeModules.AirSnapReactNative.start();
}
