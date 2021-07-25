//
//  AirSnapReactNative.swift
//  AirSnapReactNative
//
//  Created by Richard Lam on 7/24/21.
//

import Foundation
import AirSnap

@objc(AirSnapReactNative)
class AirSnapReactNative: NSObject {

    @objc(requiresMainQueueSetup)
    static func requiresMainQueueSetup() -> Bool {
        return false
    }
    
    @objc(start:withResolver:withRejecter:)
    func start(configuration: NSDictionary, resolve:RCTPromiseResolveBlock, reject:RCTPromiseRejectBlock) -> Void {
        AirSnap.start()
    }
}
