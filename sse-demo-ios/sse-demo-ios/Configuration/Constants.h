//
//  Constants.h
//  Coletas
//
//  Created by Guilherme Murari on 2/18/16.
//  Copyright © 2016 CeA. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Constants : NSObject
#pragma mark - Node SSE Configuration
extern NSString *const kNodeSSEServiceBaseUrl;

#pragma mark - Node SSE URIs
extern NSString *const kNodeSSEEvents;

#pragma mark - Bussiness Constants

#pragma mark - Error codes
extern NSTimeInterval const kRequestResponseTimeout;
extern NSUInteger const kErrCodeServerCommunication;
extern NSUInteger const kErrCodeServiceUnavailable;
extern NSUInteger const kErrCodeNoRecordFound;
extern NSUInteger const kErrCodeServerTimedOut;

#pragma mark - Error domains
extern NSString *const kNodeSSEErrorDomain;

#pragma mark - Content types
extern NSString *const kContentTypeTextPlain;
extern NSString *const kContentTypeApplicationJSON;

#pragma mark - Localizable Strings Keys
extern NSString *const kErrEventReceived;
extern NSString *const KErrConnectionError;

extern NSString *const kInfConnectionOpen;
extern NSString *const kInfEventReceived;

#pragma mark - Segue Identifiers
@end