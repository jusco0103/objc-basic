//
//  ViewController.h
//  miyashita-2.1.8
//
//  Created by 宮下良介 on 2018/03/02.
//  Copyright © 2018年 Ryosuke_Miyashita. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UIPickerViewDataSource,UIPickerViewDelegate>
@property (weak, nonatomic) IBOutlet UILabel *picaLabel;
@property (weak, nonatomic) IBOutlet UIPickerView *pica;
@property (weak, nonatomic) IBOutlet UIToolbar *toolBar;

@end

