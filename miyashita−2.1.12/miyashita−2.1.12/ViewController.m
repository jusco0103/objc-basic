//
//  ViewController.m
//  miyashita−2.1.12
//
//  Created by 宮下良介 on 2018/03/12.
//  Copyright © 2018年 Ryosuke_Miyashita. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property(nonatomic)NSArray *imgName;

@end



@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.collectionView.dataSource=self;
    self.collectionView.delegate=self;

    //画像を配列で格納
    self.imgName =@[@"mig(0)",@"mig(1)",@"mig(3)",@"mig(4)",
                    @"mig(5)",@"mig(6)",@"mig(7)",@"mig(8)"];

}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section;
{
    return self.imgName.count;
}

// The cell that is returned must be retrieved from a call to -dequeueReusableCellWithReuseIdentifier:forIndexPath:
- (__kindof UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    UICollectionViewCell *cell=[collectionView dequeueReusableCellWithReuseIdentifier:@"Cell" forIndexPath:indexPath];
    UIImageView *imageView = (UIImageView *)[cell viewWithTag:1];
    
    NSString *img = self.imgName[(int)(indexPath.row)];
    
    UIImage *image = [UIImage imageNamed:img];
    
    imageView.image = image;
    
    return cell;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
