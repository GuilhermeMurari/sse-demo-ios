//
//  CustomerCustomTableViewCell.h
//  sse-demo-ios
//
//  Created by Guilherme Murari on 3/14/16.
//  Copyright © 2016 Guilherme Murari. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CustomerCustomTableViewCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property (weak, nonatomic) IBOutlet UILabel *hashLabel;
@property (weak, nonatomic) IBOutlet UILabel *orderLabel;

@end
