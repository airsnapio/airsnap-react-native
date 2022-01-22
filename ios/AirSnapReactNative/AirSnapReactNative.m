//
//  AirSnapReactNative.m
//  AirSnapReactNative
//
//  Created by Richard Lam on 7/24/21.
//

#import <React/RCTBridgeModule.h>
#import <AirSnapSDK/AirSnapSDK-Swift.h>

@interface RCT_EXTERN_MODULE(AirSnapReactNative, NSObject)

RCT_EXTERN_METHOD(start:(NSString *)withAppKey privacyRule:(NSString *)privacyRule)

RCT_EXPORT_METHOD(getSessionId:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    resolve([AirSnap sessionId]);
}

RCT_EXPORT_METHOD(getUserId:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    resolve([AirSnap userId]);
}

RCT_EXTERN_METHOD(setUserId:(NSString *)id)

RCT_EXTERN_METHOD(captureException
                  :(NSDictionary *)exception
                  level:(NSString *)level
                  context:(NSDictionary *)context)

@end

