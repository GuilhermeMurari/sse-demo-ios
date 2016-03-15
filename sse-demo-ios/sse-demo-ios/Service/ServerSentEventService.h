//
//  UserService.h
//  Coletas
//
//  Created by Guilherme Murari on 2/18/16.
//  Copyright © 2016 CeA. All rights reserved.
//
#import "Customer.h"
#import "ServerEvent.h"

typedef void (^EventServiceBlock)(ServerEvent *event);
typedef void (^ErrorServiceBlock)(NSError *error);

@interface ServerSentEventService : NSObject

+(void)listenToEventsWithEventHandler:(EventServiceBlock)eventHandler withFailureHandler:(ErrorServiceBlock)failureHandler;

@end