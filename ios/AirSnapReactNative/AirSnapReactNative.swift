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
    
    @objc(start:)
    func start(_ withAppKey: String, _ privacyRule: String) -> Void {
        AirSnap.start(withAppKey: withAppKey, privacyRule: privacyRule == "unmasked" ? PrivacyRule.unmasked : PrivacyRule.masked)
    }

    @objc(setUser:)
    func setUser(_ identifier: String) -> Void {
        AirSnap.setUser(identifier: identifier)
    }
}
