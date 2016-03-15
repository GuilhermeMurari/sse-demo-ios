//
//  Entity.h
//  Coletas
//
//  Created by Guilherme Murari on 2/18/16.
//  Copyright © 2016 CeA. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Entity : NSObject

-(NSDictionary *) toDictionary;
+(instancetype) fromDictionary:(NSDictionary *)dict;

@end