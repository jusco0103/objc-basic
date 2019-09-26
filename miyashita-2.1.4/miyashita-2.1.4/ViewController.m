//
//  ViewController.m
//  miyashita-2.1.4
//
//  Created by 宮下良介 on 2018/02/27.
//  Copyright © 2018年 Ryosuke_Miyashita. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
- (void)viewDidLoad {
    [super viewDidLoad];
}
- (IBAction)buttonPush:(UIButton *)sender {
    UIAlertController *testAlert=[UIAlertController
                                  alertControllerWithTitle:@"Title"
                                  message:@"Test"
                                  preferredStyle:UIAlertControllerStyleAlert];
    
    [testAlert addAction:[UIAlertAction actionWithTitle:@"Cancel"
                                                  style:UIAlertActionStyleCancel
                                                handler:^(UIAlertAction * action)
                          {NSLog(@"CancelPushed");
                          }]];
    
    [testAlert addAction:[UIAlertAction actionWithTitle:@"OK"
                                                  style:UIAlertActionStyleDefault
                                                handler:^(UIAlertAction * action)
                          {NSLog(@"OKPushed");
                          }]];

    [self presentViewController:testAlert animated:YES completion:nil];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
