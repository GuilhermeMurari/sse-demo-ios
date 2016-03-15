//
//  UserManager.h
//  Coletas
//
//  Created by Guilherme Murari on 2/18/16.
//  Copyright © 2016 CeA. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Customer.h"

typedef void (^CustomersManagerBlock)(NSArray *customers, NSError *error);

@interface ServerSentEventManager : NSObject

+ (void)retrieveCurrentUserWith:(CustomersManagerBlock) handler;

@end
