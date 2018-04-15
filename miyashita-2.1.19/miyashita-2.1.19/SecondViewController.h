//
//  SecondViewController.h
//  miyashita-2.1.19
//
//  Created by 宮下良介 on 2018/04/12.
//  Copyright © 2018年 Ryosuke_Miyashita. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FirstViewController.h"

@interface SecondViewController : UIViewController

// Labelのpropertyを作成
@property (weak, nonatomic) IBOutlet UILabel *SVClabel;

// FVCのtextfieldのの値を格納するtempTextを作成
@property NSString *tempText;

@end
