//
//  Event.h
//  sse-demo-ios
//
//  Created by Guilherme Murari on 3/14/16.
//  Copyright © 2016 Guilherme Murari. All rights reserved.
//

#import "Entity.h"

@interface ServerEvent : Entity

@property(strong, nonatomic) NSString *customerHash;
@property(strong, nonatomic) NSArray *customers;

@end