//
//  FaeContact.swift
//  FaeContacts
//
//  Created by Justin He and Sophie on 6/21/17.
//  Copyright © 2017 Yue. All rights reserved.
//

import UIKit

class FaeContact {
    
    var keyValue = [String:AnyObject]()
    func whereKey(_ key: String, value: String?) -> Void {
        keyValue[key] = value as AnyObject?
    }
    func clearKeyValue() -> Void {
        self.keyValue = [String: AnyObject]()
    }
    
    // Contacts Information
    func sendFriendRequest(_ completion: @escaping (Int,Any?) -> Void) {
        postToURL("friends/request", parameter: keyValue, authentication: headerAuthentication()) { (status:Int, message: Any?)
            in
            self.clearKeyValue()
            completion(status, message)
        }
    }
    
    func acceptFriendRequest(_ completion: @escaping (Int, Any?) -> Void) {
        postToURL("friends/accept", parameter: keyValue, authentication: headerAuthentication()) { (status:Int, message: Any?)
            in
            self.clearKeyValue()
            completion(status, message)
        }
    }
    
    func ignoreFriendRequest(_ completion: @escaping (Int, Any?) -> Void) {
        postToURL("friends/ignore", parameter: keyValue, authentication: headerAuthentication()) { (status:Int, message: Any?)
            in
            self.clearKeyValue()
            completion(status, message)
        }
    }
    
    func blockPerson(_ completion: @escaping (Int, Any?) -> Void) {
        postToURL("blocks", parameter: keyValue, authentication: headerAuthentication()) { (status:Int, message: Any?)
            in
            self.clearKeyValue()
            completion(status, message)
        }
    }
    
    func ignoreFriendRequest(requestId: String, _ completion: @escaping (Int, Any?) -> Void) {
        deleteFromURL("friends/" + requestId, parameter: keyValue, authentication: headerAuthentication()) { (status:Int, message: Any?)
            in
            self.clearKeyValue()
            completion(status, message)
        }
    }
        
    func unblockPerson(userId: String, _ completion: @escaping (Int, Any?) -> Void) {
        deleteFromURL("blocks/" + userId, parameter: keyValue, authentication: headerAuthentication()) { (status:Int, message: Any?)
            in
            self.clearKeyValue()
            completion(status, message)
        }
    }
    
    func getFriendRequests(_ completion: @escaping (Int,Any?) -> Void) {
        getFromURL("friends/request", parameter: keyValue, authentication: headerAuthentication()) { (status:Int, message: Any?)
            in
            self.clearKeyValue()
            completion(status, message)
        }
    }
    
    
}
