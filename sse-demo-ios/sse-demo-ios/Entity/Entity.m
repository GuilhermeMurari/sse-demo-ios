//
//  Entity.m
//  Coletas
//
//  Created by Guilherme Murari on 2/18/16.
//  Copyright © 2016 CeA. All rights reserved.
//

#import "Entity.h"

@implementation Entity
- (NSDictionary *)toDictionary {
    return @{};
}

+ (instancetype)fromDictionary:(NSDictionary *)dict {
    return [self new];
}

@end