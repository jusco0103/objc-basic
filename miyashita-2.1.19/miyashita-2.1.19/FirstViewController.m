//
//  FirstViewController.m
//  miyashita-2.1.19
//
//  Created by 宮下良介 on 2018/04/12.
//  Copyright © 2018年 Ryosuke_Miyashita. All rights reserved.
//

#import "FirstViewController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (IBAction)SendToSVC:(id)sender{
    // 遷移先のStoryboardをインスタンス化して呼び出す
    UIStoryboard *sSB = [UIStoryboard storyboardWithName:@"SecondStoryboard" bundle:nil];
    
    // SecondViewControllerに識別子"second"をつけてインスタンス化する
    SecondViewController *sVC = [sSB instantiateViewControllerWithIdentifier:@"second"];
    
    // SVCのtempTextにFSVtextFieldの値を代入
    sVC.tempText = self.FVCtextField.text;
    
    // SecondViewControllerの遷移を設定
    [self.navigationController pushViewController:sVC animated:YES];
    
    
}


@end
