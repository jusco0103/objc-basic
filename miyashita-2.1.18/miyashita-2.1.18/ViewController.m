//
//  ViewController.m
//  miyashita-2.1.18
//
//  Created by 宮下良介 on 2018/04/06.
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

- (IBAction)transitionSecondViewController:(id)sender{
    //Second.StoryBoardをインスタンス化
    UIStoryboard *secondStoryBoard = [UIStoryboard storyboardWithName:@"Second" bundle:nil];
    //SeconfViewControllerをインスタンス化
    SecondViewController *secondViewController = [secondStoryBoard instantiateInitialViewController];
    //SeconfViewControllerに遷移する
    [self.navigationController pushViewController:secondViewController animated:YES];
     };



@end
