//
//  ViewController.m
//  miyashita-2.1.7
//
//  Created by 宮下良介 on 2018/03/02.
//  Copyright © 2018年 Ryosuke_Miyashita. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
//Main.StoryboardのUITextFieldを接続
@property (weak, nonatomic) IBOutlet UITextField *tf;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
//viewDidLoadにUItextFieldDelegateを委譲
    self.tf.delegate=self;
}
//背景をタッチしたらキーボードが隠れるようにする
-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    if(_tf.isFirstResponder){
        [_tf resignFirstResponder];
    }
}
//文字数制限をかける
//
-(BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string{
    BOOL result;
    
    NSUInteger maxlength=30;
    
    if([string compare:@"\n"]==0){
        result=YES;
    }
    else{
        NSInteger txtLength=_tf.text.length;
        NSInteger rangeLength=range.length;
        NSInteger strLength=string.length;
        NSLog(@"txt=%lu range=%lu str=%lu",txtLength,rangeLength,strLength);
        NSUInteger length=txtLength-rangeLength+strLength;
        result=(length<=maxlength);
    }
    return result;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
