//
//  UserService.m
//  Coletas
//
//  Created by Guilherme Murari on 2/18/16.
//  Copyright © 2016 CeA. All rights reserved.
//

#import "ServerSentEventService.h"
#import "URIFactory.h"
#import "ServerEvent.h"

@implementation ServerSentEventService

+(void)listenToEventsWithEventHandler:(EventServiceBlock)eventHandler withOpenHandler:(OpenServiceBlock)openHandler withErrorHandler:(EventServiceBlock)errorHandler withFailureHandler:(ErrorServiceBlock)failureHandler {
    
    EventSource *source = [EventSource eventSourceWithURL:[NSURL URLWithString:[URIFactory buildEvents]]];
    
    [source onOpen:^(Event *event) {
        openHandler(event);
    }];
    
    [source onError:^(Event *event) {
        errorHandler(nil);
    }];
    
    [source onMessage:^(Event *event) {
        if (event && event.data) {
            NSError *error;
            NSMutableDictionary *dict = [NSJSONSerialization JSONObjectWithData:[event.data dataUsingEncoding:NSUTF8StringEncoding] options:NSJSONReadingMutableContainers error:&error];
            
            ServerEvent *serverEvent = [ServerEvent fromDictionary:[dict copy]];
            
            if (error.domain) {
                failureHandler(error);
            }
            
            eventHandler(serverEvent);
        } else {
            failureHandler(nil);
        }
    }];
}

@end