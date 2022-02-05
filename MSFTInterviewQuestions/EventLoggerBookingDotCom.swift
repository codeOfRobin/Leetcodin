//
//  EventLoggerBookingDotCom.swift
//  MSFTInterviewQuestions_macOS
//
//  Created by Robin Malhotra on 05/02/2022.
//

import Foundation

/// already implemented for you
///
///
///

struct Event {
    // Already implemented
}

final class ThreadSafeArray<T> {
    
    var array: [T] = []
    
    
}


final class EventLogger {
    // Implemented (black box)
    // - 0(1) though takes 5 seconds to execute
    // Will crash when called multiple times at once
    // Will crash for input of more then 50 events
    
    private static func flushEvents(_ events: [Event]) {
        // You need to collect events passed here and strategically call flush events
        // keep in mind that log event can be called from multiple places and very frequently:
        // e.g. tracking the hotels the user has seen when the user scrolls on the search results
        // e.g. tracking image fetching from a background thread
    }
    
    var events: [Event] = []
    let eventsIsolationQueue = DispatchQueue(label: "com.event.queue")
    
    let flushingQueue = DispatchQueue(label: "com.event.flushQueue")
    var timer: Timer?
    
    func start() {
        self.timer = Timer.init(timeInterval: 5.0, repeats: true) { timer in
            self.flushingQueue.async {
                let queuedEvents: [Event] = self.eventsIsolationQueue.sync (execute: {
                    let queuedEvents = Array(self.events[0..<50])
                    if self.events.count > 50 {
                        self.events = Array(self.events.dropFirst(50))
                    } else {
                        self.events = []
                    }
                    return queuedEvents
                })
                EventLogger.flushEvents(queuedEvents)
            }
        }
    }
    
    public func logEvent (event: Event) {
        eventsIsolationQueue.async {
            self.events.append(event)
        }
    }
}
