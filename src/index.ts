import {
  ErrorHandlerCallback,
  NativeModules,
  Platform,
} from 'react-native';

export function start(key: string, privacyRule: 'mask' | 'unmask' = 'mask') {
  if (Platform.OS === 'ios') {
    NativeModules.AirSnapReactNative.start(key, privacyRule);
  }

  interceptGlobalErrorHandler();
}

export async function getSessionId(): Promise<string | null> {
  if (Platform.OS === 'ios') {
    const sessionId = await NativeModules.AirSnapReactNative.getSessionId();
    return sessionId;
  }

  return null;
}

export async function getUserId(): Promise<string | null> {
  if (Platform.OS === 'ios') {
    const userId = await NativeModules.AirSnapReactNative.getUserId();
    return userId;
  }

  return null;
}

export function setUserId(id: string | null) {
  if (Platform.OS === 'ios') {
    NativeModules.AirSnapReactNative.setUserId(id);
  }
}

export type AirSnapIssueLevel = 'fatal' | 'error' | 'warning' | 'info';

export function captureException(
  exception: Error,
  level: AirSnapIssueLevel = 'error',
  context?: Record<string, string>,
) {
  const issue = {
    summary: `${exception.name}: ${exception.message}`,
    data: {
      exception: {
        type: exception.name,
        message: exception.message,
        stacktrace: exception.stack,
      },
    },
    platform: 'javascript',
  };

  if (Platform.OS === 'ios') {
    NativeModules.AirSnapReactNative.captureException(issue, level, context);
  }
}

function interceptGlobalErrorHandler() {
  const defaultHandler = ErrorUtils.getGlobalHandler?.();

  const errorHandler: ErrorHandlerCallback = (error, isFatal) => {
    captureException(error, 'fatal');
    defaultHandler?.(error, isFatal);
  };

  ErrorUtils.setGlobalHandler(errorHandler);
}

export default {
  start,
  getSessionId,
  getUserId,
  setUserId,
  captureException,
};
