//
//  URLUtils.h
//  Coletas
//
//  Created by Guilherme Murari on 2/18/16.
//  Copyright © 2016 Dextra. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface URLUtils : NSObject

+(NSString *) buildUrl:(NSString *)url withPath:(NSString *)path withParam:(NSDictionary *)dict;
+(NSString *) buildUri:(NSString *)uri withParams:(NSDictionary *)dict;
+(NSString *) buildUrl:(NSString *)url withPath:(NSString *)path;

@end