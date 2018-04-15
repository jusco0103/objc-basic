//
//  ViewController.h
//  miyashita-2.1.9
//
//  Created by 宮下良介 on 2018/03/08.
//  Copyright © 2018年 Ryosuke_Miyashita. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
//UIView上のアイテムをIBOutlet接続する


//UIPickerViewのIBActionを設定（UILabelにUIDatePickweViewの値を反映）
- (IBAction)DateChanged:(id)sender;

@end

