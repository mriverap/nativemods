//
//  Counter.swift
//  nativemods
//
//  Created by Monica Rivera Pun on 8/12/23.
//

import Foundation

@objc(Counter)
class Counter: NSObject{
  private var count = 0;
  
  @objc
  func increment(){
    count += 1;
    print(count);
  }

@objc
static func requiresMainQueueSetup() ->Bool{
  /* 
  True: RN to initialize the native module on the main thread before any 
  JS code executes. This is needed when exporting constants from the module
  and they are needed at initialization time or when the module creates UI
  False: RN initializes the native module on the background thread
  */

  return true;
}

@objc
func constantsToExport() -> [String: Any]!{
  return ["initialCount": 0];
}
}

