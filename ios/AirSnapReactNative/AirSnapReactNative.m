//
//  AirSnapReactNative.m
//  AirSnapReactNative
//
//  Created by Richard Lam on 7/24/21.
//

#import <React/RCTBridgeModule.h>

@interface RCT_EXTERN_MODULE(AirSnapReactNative, NSObject)

RCT_EXTERN_METHOD(start:(NSDictionary)configuration
                 withResolver:(RCTPromiseResolveBlock)resolve
                 withRejecter:(RCTPromiseRejectBlock)reject)

@end
