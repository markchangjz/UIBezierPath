//
//  MainTableViewController.m
//  Draw
//
//  Created by esunbank on 2017/5/15.
//  Copyright © 2017年 Mark. All rights reserved.
//

#import "MainTableViewController.h"
#import "Draw1ViewController.h"

@interface MainTableViewController ()

@property (copy, nonatomic) NSArray<NSString *> *viewControllers;

@end

@implementation MainTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.viewControllers = @[@"Basic UIBezierPath"];
}

#pragma mark - Table view

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.viewControllers.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    
    cell.textLabel.text = self.viewControllers[indexPath.row];
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    UIViewController *viewController;
    if (indexPath.row == 0) {
        viewController = [[Draw1ViewController alloc] init];
    }
    [self.navigationController pushViewController:viewController animated:YES];
}

@end
