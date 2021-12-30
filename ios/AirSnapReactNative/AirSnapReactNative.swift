//
//  AirSnapReactNative.swift
//  AirSnapReactNative
//
//  Created by Richard Lam on 7/24/21.
//

import Foundation
import AirSnapSDK

@objc(AirSnapReactNative)
class AirSnapReactNative: NSObject {

    @objc(requiresMainQueueSetup)
    static func requiresMainQueueSetup() -> Bool {
        return false
    }
    
    @objc func start(_ withAppKey: String, privacyRule: String) -> Void {
        AirSnap.start(withAppKey: withAppKey, privacyRule: privacyRule == "unmask" ? .unmask : .mask)
    }

    @objc(setUser:)
    func setUser(_ identifier: String) -> Void {
        AirSnap.setUser(identifier: identifier)
    }
}
