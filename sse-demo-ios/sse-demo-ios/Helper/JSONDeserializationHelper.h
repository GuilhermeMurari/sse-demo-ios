//
//  JSONDeserializationHelper.h
//  Coletas
//
//  Created by Guilherme Murari on 2/24/16.
//  Copyright © 2016 CeA. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface JSONDeserializationHelper : NSObject

+(NSNumber *)deserialazedNumberWithDictionary:(NSDictionary *)dict withKey:(NSString *)key;
+(NSInteger) deserialazedIntegerWithDictionary:(NSDictionary *)dict withKey:(NSString *)key;
+(NSString *)deserialazedStringWithDictionary:(NSDictionary *)dict withKey:(NSString *)key;
+(BOOL)emptyDictKeyWithDictionary:(NSDictionary *)dict  withKey:(NSString *)key;

@end