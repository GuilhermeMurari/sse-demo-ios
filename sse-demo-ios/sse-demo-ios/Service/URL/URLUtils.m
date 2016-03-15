//
//  URLUtils.m
//  Coletas
//
//  Created by Guilherme Murari on 2/18/16.
//  Copyright © 2016 Dextra. All rights reserved.
//
#import "URLUtils.h"

@implementation URLUtils : NSObject

+(NSString *) buildUrl:(NSString *)url withPath:(NSString *)path withParam:(NSDictionary *)dict {
    NSString *partialURL = [url stringByAppendingString:path];
    
    return [URLUtils replaceUriParams:partialURL withParams:dict];
}

+(NSString *) buildUrl:(NSString *)url withPath:(NSString *)path {
    return [url stringByAppendingString:path];
}

+(NSString *) buildUri:(NSString *)uri withParams:(NSDictionary *)dict {
    return [URLUtils replaceUriParams:uri withParams:dict];
}

+(NSString *) replaceUriParams:(NSString *)uri withParams:(NSDictionary *) dict {
    for (NSString* key in [dict allKeys]) {
        id value = [dict objectForKey:key];
        uri = [uri stringByReplacingOccurrencesOfString:key withString:(NSString *)value];
    }
    
    return uri;
}

@end
