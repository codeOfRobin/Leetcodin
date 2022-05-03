//
//  OurNotificationCenter.swift
//  MSFTInterviewQuestions_macOS
//
//  Created by Robin Malhotra on 09/02/2022.
//

import Foundation

class ThreadSafeStorage<T> {
    var protectedThing: T
    
    let isolationQueue = DispatchQueue.init(label: "com.our.isolationQueue", attributes: .concurrent)
    
    init(protectedThing: T) {
        self.protectedThing = protectedThing
    }
    
    func read() -> T {
        isolationQueue.sync {
            return protectedThing
        }
    }
    
    func write(block: @escaping () -> Void) {
        isolationQueue.async(flags: .barrier) {
            block()
        }
    }
    
}

class OurNotificationCenter {
    
    var genericNotificationStorage: [String: [String: (OperationQueue?, NotificationBlock)]] = [:]
    var objectNotificationStorage: [String: [String: (AnyObject, OperationQueue?, NotificationBlock)]] = [:]
    
    typealias NotificationBlock = (AnyObject?, [AnyHashable : Any]?) -> Void
    
    
    func addObserver(forName name: String, object obj: AnyObject?, queue: OperationQueue?, using block: @escaping NotificationBlock) {
        let uuid: String = UUID().uuidString
        if let obj = obj {

            objectNotificationStorage[name] = [uuid: (obj, queue, block)]
        } else {
            genericNotificationStorage[name] = [uuid: (queue, block)]
        }
    }
    
    func removeObserver(_ token: String, name: String, object anObject: AnyObject?) {
        if let anObject = anObject {
            guard let value = objectNotificationStorage[name]?[token] else {
                return
            }
            if value.0 === anObject {
                objectNotificationStorage[name]?.removeValue(forKey: token)
            }
        } else {
            genericNotificationStorage[name]?.removeValue(forKey: token)
        }
    }
    
    func post(name: String, object: AnyObject?, userInfo: [AnyHashable : Any]? = nil) {
        if let object = object {
            // Fix this
            guard let data = objectNotificationStorage[name]?.values.first(where: { (sender, _, _) in
                sender === object
            }) else {
                return
            }
            data.1?.addOperation {
                data.2(data.0, userInfo)
            }
        } else {
            guard let values = genericNotificationStorage[name]?.values else {
                return
            }
            values.forEach { (queue, block) in
                queue?.addOperation {
                    block(nil, userInfo)
                }
            }
        }
    }
}


class BloombergStockTracker {
    let trackingIndex: Int
    var stocks: [Int] = []
    
    var volumes: [String: (Int, Int)] = [:]
    
    init(trackingIndex: Int) {
        self.trackingIndex = trackingIndex
    }
    
    func incomingTrade(ticker: String, volume: Int) {
//        let total = volumes[<#Dictionary<String, (Int, Int)>.Index#>]
    }
}
