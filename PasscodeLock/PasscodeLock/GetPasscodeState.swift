//
//  GetPasscodeState.swift
//  PasscodeLock
//
//  Created by Sathyakumar Rajaraman on 5/19/17.
//  Copyright © 2017 Yanko Dimitrov. All rights reserved.
//

import Foundation

struct GetPasscodeState: PasscodeLockStateType {
    
    let title: String
    let isCancellableAction = true
    var isTouchIDAllowed = false
    
    fileprivate var inccorectPasscodeAttempts = 0
    fileprivate var isNotificationSent = false
    
    init() {
        title = localizedStringFor("PasscodeLockEnterTitle", comment: "Enter passcode title")
    }
    
    mutating func accept(passcode: [Int], fromLock lock: PasscodeLockType) {
        lock.delegate?.passcodeEntered(passcode)
        lock.delegate?.passcodeLockDidSucceed(lock)
    }
}
