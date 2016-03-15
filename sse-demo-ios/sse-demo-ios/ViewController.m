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
#import "ServerSentEventManager.h"

@interface ViewController () <UITableViewDelegate, UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UITableView *customersTableView;
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
    [ServerSentEventManager listenToEventsWith:^(ServerEvent *serverEvent, NSError *error) {
        _customers = serverEvent.customers;
        [_customersTableView reloadData];
    }];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return _customers ? [_customers count] : 0;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *simpleTableIdentifier = @"SimpleTableItem";
//    static NSString *identifier = @"CustomerCustomCell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    
    Customer *customer = [_customers objectAtIndex:indexPath.row];
    
    if(cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:simpleTableIdentifier];
//        NSArray *nib = [[NSBundle mainBundle] loadNibNamed:@"CustomerCustomTableViewCell" owner:self options:nil];
//        cell = [nib objectAtIndex:0];
    }
    
    cell.textLabel.text = customer.name;//[NSString stringWithFormat: @"%ld", (long)indexPath.row];
//    cell.hashLabel.text = customer.customerId;
//    cell.nameLabel.text = customer.name;
    
    return cell;
}


@end
