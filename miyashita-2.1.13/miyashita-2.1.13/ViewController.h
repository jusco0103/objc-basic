//
//  ViewController.h
//  miyashita-2.1.13
//
//  Created by 宮下良介 on 2018/03/12.
//  Copyright © 2018年 Ryosuke_Miyashita. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UICollectionViewDataSource,UICollectionViewDelegate>
@property (weak, nonatomic) IBOutlet UICollectionView *collectionView;


@end

