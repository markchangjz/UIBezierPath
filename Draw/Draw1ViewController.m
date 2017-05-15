//
//  Draw1ViewController.m
//  Draw
//
//  Created by esunbank on 2017/5/15.
//  Copyright © 2017年 Mark. All rights reserved.
//

#import "Draw1ViewController.h"
#import "Draw1View.h"

@interface Draw1ViewController ()

@end

@implementation Draw1ViewController

- (void)loadView {
    [super loadView];

    self.view.backgroundColor = [UIColor whiteColor];
}

- (void)viewDidLoad {
    [super viewDidLoad];

    Draw1View *view = [[Draw1View alloc] init];
    view.backgroundColor = [UIColor whiteColor];
    view.frame = self.view.frame;
    [self.view addSubview:view];
}

@end
