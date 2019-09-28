//
//  ViewController.m
//  miyashita-2.1.5
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
    // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)ButtonPush:(id)sender {
//UIAlertControllerのtestacを設定
UIAlertController *testac=[UIAlertController alertControllerWithTitle:@"Title"
                                                              message:@"Test"
                                                       preferredStyle:UIAlertControllerStyleActionSheet];
//Facebookのアクションを設定
    [testac addAction:[UIAlertAction actionWithTitle:@"Facebook"
                                               style:UIAlertActionStyleDefault
                                             handler:^(UIAlertAction * action) {
                                                   NSLog(@"FB_Pushed");
            }]];
//Twitterのアクションを設定
    [testac addAction:[UIAlertAction actionWithTitle:@"Twitter"
                                               style:UIAlertActionStyleDefault
                                             handler:^(UIAlertAction * action) {
                                                   NSLog(@"TW_Pushed");
            }]];
//LINEのアクションを設定
    [testac addAction:[UIAlertAction actionWithTitle:@"LINE"
                                               style:UIAlertActionStyleDefault
                                             handler:^(UIAlertAction * action) {
                                                   NSLog(@"LINE_Pushed");
            }]];
//ActionSheet表示
    [self presentViewController:testac animated:YES completion:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
