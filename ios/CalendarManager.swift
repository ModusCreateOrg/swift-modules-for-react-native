//
//  CalendarManager.swift
//  SwiftBridge
//
//  Created by Brice Mason on 3/6/2017.
//  Copyright © 2017 Facebook. All rights reserved.
//

import Foundation

// CalendarManager.swift

@objc(CalendarManager)
class CalendarManager: RCTEventEmitter {
  
  @objc override func supportedEvents() -> [String]! {
    return ["EventReminder"];
  }
  
  @objc func addEvent(_ name: String, location: String, date: NSNumber, callback: RCTResponseSenderBlock ) -> Void {
    // Date is ready to use!
    NSLog("%@ %@ %@", name, location, date)
    let ret:[String:Any] =  ["name": name, "location": location, "date" : date]
    callback([ret])
    self.sendEvent(withName: "EventReminder", body: ret)
  }
  
  @objc override func constantsToExport() -> [String : Any]! {
    return [
      "x": 1,
      "y": 2,
      "z": "Arbitrary string"
    ]
  }
  
}
