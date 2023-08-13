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
}
