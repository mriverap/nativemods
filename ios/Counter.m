//
//  Counter.m
//  nativemods
//
//  Created by Monica Rivera Pun on 8/12/23.
//

#import <Foundation/Foundation.h>

#import "React/RCTBridgeModule.h"

@interface RCT_EXTERN_MODULE(Counter,NSObject)
RCT_EXTERN_METHOD(increment:(RCTResponseSenderBlock)callback)
@end
