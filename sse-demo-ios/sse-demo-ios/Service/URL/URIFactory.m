//
//  URIFactory.m
//  Coletas
//
//  Created by Guilherme Murari on 2/18/16.
//  Copyright © 2016 Caio Henrique. All rights reserved.
//

#import "URIFactory.h"
#import "URLUtils.h"
#import "Constants.h"

@implementation URIFactory

static NSString *restServiceBaseURL;

+(NSString *)buildEvents {
    return [URLUtils buildUrl:kNodeSSEServiceBaseUrl withPath:kNodeSSEEvents];
}

@end