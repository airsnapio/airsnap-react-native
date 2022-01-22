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

    @objc func setUserId(_ id: String?) -> Void {
        AirSnap.setUser(id: id)
    }
    
    @objc public func captureException(_ issue: [String: NSObject], level: String, context: [String: NSObject]) {
      let issueInput = IssueInput(platform: issue["platform"] as! String , summary: issue["summary"] as! String, data: issue["data"] as! [String: NSObject]?)

      AirSnap.captureException(issue: issueInput, level: level, context: context)
    }


}
