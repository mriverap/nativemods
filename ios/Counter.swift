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
  func increment(_ callback:RCTResponseSenderBlock){
    count += 1;
    //print(count);
    callback([count])
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
  
@objc
  func decrement(_ resolve:RCTPromiseResolveBlock, reject:RCTPromiseRejectBlock)
  {
    if(count == 0)
    {
      let error = NSError(domain: "", code: 200, userInfo: nil);
      reject("ERROR_COUNT","count cannot be negative", error);
    }
    else{
      count -= 1;
      resolve("count is \(count)");
    }
  }
}

