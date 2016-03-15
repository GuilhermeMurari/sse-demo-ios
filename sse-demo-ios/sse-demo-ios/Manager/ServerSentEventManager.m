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
#import "ServerEvent.h"

@implementation ServerSentEventManager

+ (void)listenToEventsWith:(ServerEventManagerBlock) handler {
    [ServerSentEventService listenToEventsWithEventHandler:^(ServerEvent *event) {
        [SVProgressHUD showSuccessWithStatus:NSLocalizedString(kInfEventReceived, nil) maskType:SVProgressHUDMaskTypeBlack];
        handler(event, nil);
    } withOpenHandler:^(Event *event) {
        [SVProgressHUD showSuccessWithStatus:NSLocalizedString(kInfConnectionOpen, nil) maskType:SVProgressHUDMaskTypeBlack];
    } withErrorHandler:^(ServerEvent *event) {
        [SVProgressHUD showErrorWithStatus:NSLocalizedString(KErrConnectionError, nil) maskType:SVProgressHUDMaskTypeBlack];
        handler(nil, nil);
    } withFailureHandler:^(NSError *error) {
        [SVProgressHUD showErrorWithStatus:NSLocalizedString(kErrEventReceived, nil) maskType:SVProgressHUDMaskTypeBlack];
        handler(nil, error);
    }];
}

@end