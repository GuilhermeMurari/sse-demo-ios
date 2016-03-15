//
//  User.m
//  Coletas
//
//  Created by Guilherme Murari on 2/18/16.
//  Copyright © 2016 CeA. All rights reserved.
//

#import "Customer.h"
#import "JSONDeserializationHelper.h"

@implementation Customer

- (instancetype)initWithCustomerId:(NSString *)customerId withStoreId:(NSNumber *)storeId withName:(NSString *)name {
    self = [super init];
    
    if (self) {
        _customerId = customerId;
        _storeId = storeId;
        _name = name;
    }
    
    return self;
}

#pragma mark - Override

- (NSDictionary *)toDictionary {
    return @{
             @"customerId"   : _customerId ? _customerId : @0,
             @"name" : _name ? _name : @"",
             @"storeId"  : _storeId ? _storeId : @0
             };
}

+ (instancetype)fromDictionary:(NSDictionary *)dict {
    Customer* customer = [Customer new];
    
    if (dict) {
        customer.customerId = [JSONDeserializationHelper deserialazedStringWithDictionary:dict withKey:@"customerId"];
        customer.name = [JSONDeserializationHelper deserialazedStringWithDictionary:dict withKey:@"name"];
        customer.storeId = [JSONDeserializationHelper deserialazedNumberWithDictionary:dict withKey:@"storeId"];
    }
    
    return customer;
}

@end