//
//  ViewController.m
//  miyashita-2.1.17
//
//  Created by 宮下良介 on 2018/04/05.
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

//SecondViewCOntrollerに画面遷移するためのメソッド作成
- (IBAction)transitionSecondViewController:(id)sender{
    //Second.StoryBoardをインスタンス化
    UIStoryboard *secondStoryBoard = [UIStoryboard storyboardWithName:@"Second" bundle:nil];
    //SeconfViewControllerをインスタンス化
    SecondViewController *secondViewController = [secondStoryBoard instantiateViewControllerWithIdentifier:@"SecondViewController"];
    //SeconfViewControllerに遷移する
    [self presentViewController: secondViewController animated:YES completion:nil];
}

@end
