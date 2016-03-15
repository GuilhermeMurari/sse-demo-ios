//
//  UserManager.h
//  Coletas
//
//  Created by Guilherme Murari on 2/18/16.
//  Copyright © 2016 CeA. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ServerEvent.h"

typedef void (^ServerEventManagerBlock)(ServerEvent *serverEvent, NSError *error);

@interface ServerSentEventManager : NSObject

+ (void)listenToEventsWith:(ServerEventManagerBlock) handler;

@end
