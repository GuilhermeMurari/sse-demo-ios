//
//  User.h
//  Coletas
//
//  Created by Guilherme Murari on 2/18/16.
//  Copyright © 2016 CeA. All rights reserved.
//

#import "Entity.h"

@interface Customer : Entity

@property(nonatomic) NSInteger customerId;
@property(strong, nonatomic) NSString *name;
@property(strong, nonatomic) NSNumber *storeId;

- (instancetype)initWithCustomerId:(NSInteger) customerId withStoreId:(NSNumber *)storeId withName:(NSString *)name;

@end