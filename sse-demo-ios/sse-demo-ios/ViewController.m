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
    static NSString *identifier = @"CustomerCustomCell";
    CustomerCustomTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    
    Customer *customer = [_customers objectAtIndex:indexPath.row];
    
    if(cell == nil) {
        cell = (CustomerCustomTableViewCell *) [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
        
        NSArray *nib = [[NSBundle mainBundle] loadNibNamed:@"CustomerCustomTableViewCell" owner:self options:nil];
        cell = [nib objectAtIndex:0];
    }
    
    cell.nameLabel.text = customer.name;
    cell.idLabel.text = [NSString stringWithFormat: @"%ld", (long)customer.customerId];
    cell.orderLabel.text = [NSString stringWithFormat: @"%ld", (long)indexPath.row + 1];
    
    return cell;
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 60.0f;
}

@end
