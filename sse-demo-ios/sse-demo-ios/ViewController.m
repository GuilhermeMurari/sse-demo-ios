//
//  ViewController.m
//  sse-demo-ios
//
//  Created by Guilherme Murari on 3/14/16.
//  Copyright © 2016 Guilherme Murari. All rights reserved.
//

#import "ViewController.h"
#import "CustomerCustomTableViewCell.h"
#import "Customer.h"

@interface ViewController () <UITableViewDelegate, UITableViewDataSource>
@property (nonatomic, strong) NSArray *customers;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _customers = [[NSMutableArray new] copy];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (IBAction)listenEvents:(id)sender {
    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [_customers count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *identifier = @"CustomerCustomCell";
    
    CustomerCustomTableViewCell *cell = (CustomerCustomTableViewCell *)[tableView dequeueReusableCellWithIdentifier:identifier];
    
    Customer *customer = [_customers objectAtIndex:indexPath.row];
    
    if(cell == nil) {
        NSArray *nib = [[NSBundle mainBundle] loadNibNamed:@"CustomerCustomTableViewCell" owner:self options:nil];
        cell = [nib objectAtIndex:0];
    }
    
    [cell.orderLabel setText:[NSString stringWithFormat: @"%ld", (long)indexPath.row]];
    [cell.hashLabel setText:customer.customerId];
    [cell.nameLabel setText:customer.name];
    return cell;
}


@end
