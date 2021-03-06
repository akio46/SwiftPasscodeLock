//
//  PasscodeLockStateType.swift
//  PasscodeLock
//
//  Created by Yanko Dimitrov on 8/28/15.
//  Copyright © 2015 Yanko Dimitrov. All rights reserved.
//

import Foundation

public protocol PasscodeLockStateType {
    
    var title: String {get}
    var isCancellableAction: Bool {get}
    var isTouchIDAllowed: Bool {get}
    
    mutating func accept(passcode: [Int], fromLock lock: PasscodeLockType)
}
