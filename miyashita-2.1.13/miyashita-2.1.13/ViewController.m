//
//  ViewController.m
//  miyashita-2.1.13
//
//  Created by 宮下良介 on 2018/03/12.
//  Copyright © 2018年 Ryosuke_Miyashita. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property(nonatomic)NSArray *img;
@property(nonatomic)NSArray *imgName;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //datasouerce,delegateの接続
    self.collectionView.dataSource=self;
    self.collectionView.delegate=self;
    
    _img=@[@"mig(0)",@"mig(1)",@"mig(3)",@"mig(4)",
                @"mig(5)",@"mig(6)",@"mig(7)",@"mig(8)",];

    _imgName=@[@"ホットケーキ",@"餃子",@"麻婆豆腐",@"ハンバーグ",
                   @"ハム卵丼",@"ラーメン",@"特上カルビ",@"中トロ"];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView
{
    return 1;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    
    return self.img.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    
    UICollectionViewCell *cell=[collectionView dequeueReusableCellWithReuseIdentifier:@"Cell" forIndexPath:indexPath];
    
    UIImageView *imageView = (UIImageView *)[cell viewWithTag:1];
    UILabel *label = (UILabel *)[cell viewWithTag:2];
    
    NSString *image = _img[(int)(indexPath.row)];
    NSString *imgname = _imgName[(int)(indexPath.row)];
    
    UIImage *Image = [UIImage imageNamed:image];
    imageView.image = Image;
    
    label.text=imgname;
    
    return cell;
}

@end
