//
//  SecondViewController.m
//  miyashita-2.1.17
//
//  Created by 宮下良介 on 2018/04/06.
//  Copyright © 2018年 Ryosuke_Miyashita. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (IBAction)transitionViewController:(id)sender{
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
