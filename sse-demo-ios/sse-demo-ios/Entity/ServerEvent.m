//
//  Event.m
//  sse-demo-ios
//
//  Created by Guilherme Murari on 3/14/16.
//  Copyright © 2016 Guilherme Murari. All rights reserved.
//

#import "ServerEvent.h"
#import "JSONDeserializationHelper.h"
#import "Customer.h"

@implementation ServerEvent

#pragma mark - Override

//- (NSDictionary *)toDictionary {
//    return @{
//             @"hash"   : _customerId ? _customerId : @0,
//             @"customer" : _name ? _name : @"",
//             @"storeId"  : _storeId ? _storeId : @0
//             };
//}

+ (instancetype)fromDictionary:(NSDictionary *)dict {
    ServerEvent* event = [ServerEvent new];
    
    if (dict) {
        event.customerHash = [JSONDeserializationHelper deserialazedStringWithDictionary:dict withKey:@"hash"];
        NSMutableArray *customers = [NSMutableArray new];
        NSArray *array = [dict objectForKey:@"data"];
        
        for (NSDictionary *customer in array) {
            [customers addObject:[Customer fromDictionary:customer]];
        }
        
        event.customers = [customers copy];
    }
    
    return event;
}

@end