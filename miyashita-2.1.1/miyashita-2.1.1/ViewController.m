//
//  ViewController.m
//  miyashita-2.1.1
//
//  Created by 宮下良介 on 2018/02/21.
//  Copyright © 2018年 Ryosuke_Miyashita. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _labeeel.text = NSLocalizedString(@"スタート", nil);
    [_labeeel sizeToFit];
    _labeeel.center = self.view.center;
    [self.view addSubview:_labeeel];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
