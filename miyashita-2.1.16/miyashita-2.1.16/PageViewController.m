//
//  PageViewController.m
//  miyashita-2.1.16
//
//  Created by 宮下良介 on 2018/03/22.
//  Copyright © 2018年 Ryosuke_Miyashita. All rights reserved.
//

#import "PageViewController.h"

@interface PageViewController ()

@property(strong,nonatomic)NSArray *viewList;
@property(strong,nonatomic)UIViewController *viewController;
@property int viewControllerIndex;

-(void)setupPageviewController;

@end

@implementation PageViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setupPageviewController];

}

// PageViewControllerのセットアップをするメソッドを作成
-(void)setupPageviewController{
    
    // PageViewControllerのデリゲート、データソースをクラスに接続
    self.delegate=self;
    self.dataSource=self;
    
    // pageViewで管理するViewControllerのIDを格納する
    self.viewList = @[@"FirstViewController",
                      @"SecondViewController",
                      @"ThirdViewController"];
    
    //　初めに表示するViewControllerのindexを変数viewControllerIndexに格納する
    self.viewControllerIndex=0;
    
    // 最初に表示するUIViewControllerを変数viewControllerに格納する
    self.viewController = [self.storyboard instantiateViewControllerWithIdentifier:self.viewList[0]];
    
    // 表示するUIViewControllerにtag付けする
    self.viewController.view.tag = self.viewControllerIndex;
    
    //表示するUIViewControllerにviewControllerを指定して表示する
    [self setViewControllers:@[self.viewController] direction:UIPageViewControllerNavigationDirectionForward animated:NO completion:nil];
}

//require:戻り方向（左）に画面遷移した時の処理
- (nullable UIViewController *)pageViewController:(UIPageViewController *)pageViewController viewControllerBeforeViewController:(UIViewController *)viewController{
    
    // 現在表示しているUIViewControllerのタグを取得
    self.viewControllerIndex = (int)viewController.view.tag;
    
    //
    if((self.viewControllerIndex==0 || self.viewControllerIndex==NSNotFound)){
        return nil;
    }
    
    // タグNoを−1してIndexに格納する
    self.viewControllerIndex--;
    
    // 表示しているUIViewControllerにタグ番号を振る。
    self.viewController.view.tag = self.viewControllerIndex;
    
    // 現在のIndex番号にあったUIViewControllerをviewControllerに格納する
    self.viewController = [self.storyboard instantiateViewControllerWithIdentifier:self.viewList[self.viewControllerIndex]];
    
    //現在のviewControllerを表示する
    return self.viewController;
}

//require:進み方向（右）に画面遷移した時の処理
- (nullable UIViewController *)pageViewController:(UIPageViewController *)pageViewController viewControllerAfterViewController:(UIViewController *)viewController{
    
    // 現在表示しているUIViewControllerのタグを取得
    self.viewControllerIndex = (int)viewController.view.tag;
    
    // タグNoを+1してIndexに格納する
    self.viewControllerIndex++;
    
    //
    if((self.viewControllerIndex >= self.viewList.count ||  self.viewControllerIndex == NSNotFound)){
        return nil;
    }
    
    // 現在のIndex番号にあったUIViewControllerをviewControllerに格納する
    self.viewController = [self.storyboard instantiateViewControllerWithIdentifier:self.viewList[self.viewControllerIndex]];

    // 表示しているUIViewControllerにタグ番号を振る。
    self.viewController.view.tag = self.viewControllerIndex;
    

    
    //現在のviewControllerを表示する
    return self.viewController;
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
