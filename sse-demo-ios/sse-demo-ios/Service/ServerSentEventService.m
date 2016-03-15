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
#import <EventSource.h>

@implementation ServerSentEventService

+(void)listenToEventsWithEventHandler:(EventServiceBlock)eventHandler withFailureHandler:(ErrorServiceBlock)failureHandler {
    EventSource *source = [EventSource eventSourceWithURL:[NSURL URLWithString:[URIFactory buildEvents]]];
    [source addEventListener:@"message" handler:^(Event *event) {
        if (event) {
            NSError *error;
            NSMutableDictionary *dict = [NSJSONSerialization JSONObjectWithData:[event.data dataUsingEncoding:NSUTF8StringEncoding] options:NSJSONReadingMutableContainers error:&error];
            
            ServerEvent *event = [ServerEvent fromDictionary:[dict copy]];
            
            if (error) {
                failureHandler(error);
            }
            
            eventHandler(event);
        } else {
            failureHandler(nil);
        }
    }];
}

@end