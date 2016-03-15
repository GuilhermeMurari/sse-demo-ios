//
//  UserManager.m
//  Coletas
//
//  Created by Guilherme Murari on 2/18/16.
//  Copyright © 2016 CeA. All rights reserved.
//

#import "ServerSentEventManager.h"
#import "ServerSentEventService.h"
#import "Constants.h"
#import "SVProgressHUD.h"

@implementation ServerSentEventManager

+ (void)retrieveCurrentUserWith:(CustomersManagerBlock) handler {
    [ServerSentEventService listenToEventsWithEventHandler:^(ServerEvent *event) {
        handler(event.customers, nil);
    } withFailureHandler:^(NSError *error) {
        handler(nil, error);
        
    }];
}

@end