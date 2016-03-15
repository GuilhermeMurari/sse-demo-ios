//
//  JSONDeserializationHelper.m
//  Coletas
//
//  Created by Guilherme Murari on 2/24/16.
//  Copyright © 2016 CeA. All rights reserved.
//

#import "JSONDeserializationHelper.h"

@implementation JSONDeserializationHelper

+(NSNumber *)deserialazedNumberWithDictionary:(NSDictionary *)dict withKey:(NSString *)key {
    if ([JSONDeserializationHelper emptyDictKeyWithDictionary:dict withKey:key]) {
        return nil;
    } else {
        return @([[dict objectForKey:key] intValue]);
    }
}

+(NSString *)deserialazedStringWithDictionary:(NSDictionary *)dict withKey:(NSString *)key {
    if ([JSONDeserializationHelper emptyDictKeyWithDictionary:dict withKey:key]) {
        return nil;
    } else {
        return [dict objectForKey:key];
    }
}

+(NSInteger) deserialazedIntegerWithDictionary:(NSDictionary *)dict withKey:(NSString *)key {
    if ([JSONDeserializationHelper emptyDictKeyWithDictionary:dict withKey:key]) {
        return -1;
    } else {
        return [[dict objectForKey:key] intValue];
    }
}

+(BOOL)emptyDictKeyWithDictionary:(NSDictionary *)dict  withKey:(NSString *)key {
    return dict == nil || [[dict objectForKey:key] isEqual:[NSNull null]] || !dict;
}

@end