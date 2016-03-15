//
//  Constants.m
//  Coletas
//
//  Created by Guilherme Murari on 2/18/16.
//  Copyright © 2016 CeA. All rights reserved.
//

#import "Constants.h"

@implementation Constants


#pragma mark - Node SSE Configuration
NSString *const kNodeSSEServiceBaseUrl = @"http://172.16.120.179:9090/";

#pragma mark - Node SSE URIs
NSString *const kNodeSSEEvents = @"events";

#pragma mark - Bussiness Constants

#pragma mark - Error codes
NSTimeInterval const kRequestResponseTimeout = 10;
NSUInteger const kErrCodeServerCommunication = 1;
NSUInteger const kErrCodeServiceUnavailable = 2;
NSUInteger const kErrCodeNoRecordFound = 3;
NSUInteger const kErrCodeServerTimedOut = 4;

#pragma mark - Error domains
NSString *const kNodeSSEErrorDomain = @"NodeSSEErrorDomain";

#pragma mark - Content types
NSString *const kContentTypeTextPlain = @"text/html";
NSString *const kContentTypeApplicationJSON = @"application/json";

#pragma mark - Localizable Strings Keys
NSString *const kErrEventReceived = @"errEventReceived";
NSString *const KErrConnectionError = @"errConnectionError";

NSString *const kInfConnectionOpen = @"infConnectionOpen";
NSString *const kInfEventReceived = @"infEventReceived";

#pragma mark - Segue Identifiers

@end