//
//  UserService.h
//  Coletas
//
//  Created by Guilherme Murari on 2/18/16.
//  Copyright © 2016 CeA. All rights reserved.
//
#import "Customer.h"
#import "ServerEvent.h"
#import <EventSource.h>

typedef void (^EventServiceBlock)(ServerEvent *event);
typedef void (^ErrorServiceBlock)(NSError *error);
typedef void (^OpenServiceBlock)(Event *event);


@interface ServerSentEventService : NSObject

+(void)listenToEventsWithEventHandler:(EventServiceBlock)eventHandler withOpenHandler:(OpenServiceBlock)openHandler withErrorHandler:(EventServiceBlock)errorHandler withFailureHandler:(ErrorServiceBlock)failureHandler;

@end