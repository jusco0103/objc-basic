//
//  ViewController.m
//  miyashita-2.1.3
//
//  Created by 宮下良介 on 2018/02/24.
//  Copyright © 2018年 Ryosuke_Miyashita. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
//UIButtonのsenderを設定
- (IBAction)changeimage:(id)sender {
//処理説明：ランダムな数字を生成->Assetのファイル名を作成->背景にAssetの画像を指定
    
    //1-5のランダムな数字ramを設定
    NSInteger ram=(int)arc4random_uniform(5)+1;
    //ramを型変換（int->String）
    NSString *strram=[NSString stringWithFormat:@"%ld",ram];
    //Assetのファイル名"image-"部分を格納
    NSString *img=@"image-";
    //imgとstramを結合してimagenameを作成
    NSString *imagename=[NSString stringWithFormat:@"%@%@",img,strram];
    //ちゃんとファイル名がでるかデバッグ
    NSLog(@"%@",imagename);
    //背景にimagenameを設定
    UIImage* backgroundimage=[UIImage imageNamed:imagename];
    self.view.backgroundColor=[UIColor colorWithPatternImage:backgroundimage];
}
@end
