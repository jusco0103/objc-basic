//
//  ViewController.m
//  miyashita-2.1.9
//
//  Created by 宮下良介 on 2018/03/08.
//  Copyright © 2018年 Ryosuke_Miyashita. All rights reserved.
//
//要件
/*初回起動時は、UIDatePickerViewを非表示にする。
ラベルをタップすると、UIDatePickerViewを表示する。（初期値は、今日の日付）
UIDatePickerViewの値が変更されると、ラベルにその値を反映する。
Doneボタンを押下すると、UIDatePickerViewを非表示にする。
背景をタップすると、UIDatePickerViewを非表示にする。*/

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UILabel *dpLabel;
@property (weak, nonatomic) IBOutlet UIToolbar *toolBar;
@property (weak, nonatomic) IBOutlet UIDatePicker *datePicker;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //Labelのタップ検知を有効にする
    self.dpLabel.userInteractionEnabled=YES;

}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{

    UITouch *touch=[touches anyObject];
    if(touch.view.tag==0){
        self.datePicker.hidden=YES;
        self.toolBar.hidden=YES;
    }
    else{
        self.datePicker.hidden=NO;
        self.toolBar.hidden=NO;
    }
}
//UILabelにUIDatePickweViewの値を反映
- (IBAction)DateChanged:(id)sender{
    //NSDateFormatterのインスタンスdfをNSDateFormatterとして初期化
    NSDateFormatter *df=[[NSDateFormatter alloc]init];
    //dfの形式をMM月dd日 HH時mm分にする
    df.dateFormat=@"MM月dd日 HH時mm分";
    //dpLabelにdatepickerの日付を格納する
    self.dpLabel.text=[df stringFromDate:self.datePicker.date];
}

- (IBAction)DoneButtonPushed:(id)sender {
    self.datePicker.hidden=YES;
    self.toolBar.hidden=YES;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
