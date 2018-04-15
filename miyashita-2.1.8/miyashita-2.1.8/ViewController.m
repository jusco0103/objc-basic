//
//  ViewController.m
//  miyashita-2.1.8
//
//  Created by 宮下良介 on 2018/03/02.
//  Copyright © 2018年 Ryosuke_Miyashita. All rights reserved.
//
/*////要件////
 "初回起動時は、UIPickerを非表示にする。
 ラベルをタップすると、UIPickerを表示する。
 UIPickerの値が変更されると、ラベルにその値を反映する。
 Doneボタンを押下すると、UIPickerを非表示にする。
 背景をタップすると、UIPickerViewを非表示にする。"
 ///////////
 1.UILabel,UIPickerViewを用意する。F!
 2.UIPickerViewを非表示にする。F!
 3.UILabelをタップしたことを検知する処理を入れるF!
 4.3が動いたら、UIPickerViewを非表示にする処理を入れるF!
 5.UIPickerViewにDoneボタンを作るF!
 6.Doneボタンを押すとUIPickerViewを非表示にする処理を入れるF!
 7.背景をタップしたことを検知する処理を入れるF!
 8.7が動いたら、UIPickerViewを非表示にする処理を入れるF!
 9.UIPickerViewを実装するF!
 10.UIPickerViewの値を取得して、Label.textに代入する処理を入れる。
 */

#import "ViewController.h"

@interface ViewController ()

@property NSArray *picaData;
@property (weak, nonatomic) IBOutlet UILabel *picaLabel;
@property (weak, nonatomic) IBOutlet UIPickerView *pica;
@property (weak, nonatomic) IBOutlet UIToolbar *toolBar;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    //Labelのタッチ検知を有効にする
    self.picaLabel.userInteractionEnabled=YES;
    //Label,Buttonにタグ付けする（UIPickerViewの表示/非表示の条件にするため）
    self.picaLabel.tag=1;
    
    //picaDataを初期化
    self.picaData=@[@"Item1",@"Item2",@"Item3",@"Item4",@"Item5"];
    
    //UIPickerViewにdataSource、delegateを接続
    self.pica.dataSource=self;
    self.pica.delegate=self;
    
}
//タッチ動作が行われた時の処理
-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    UITouch *touch=[touches anyObject];
    
    //UIPickerViewを表示/非表示にする条件分岐
    switch(touch.view.tag){
        case 0:
            self.pica.hidden=YES;
            self.toolBar.hidden=YES;
            break;
        case 1:
            self.pica.hidden=NO;
            self.toolBar.hidden=NO;
            break;
        default:
            break;
    }
}

- (IBAction)doneButtonPush:(UIBarButtonItem *)sender {
    self.pica.hidden=YES;
    self.toolBar.hidden=YES;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

// UIPickerViewの実装
//UIPickerView内のデータ列数を決定
- (NSInteger)numberOfComponentsInPickerView:(nonnull UIPickerView *)pickerView {
    return 1;
}

//UIPickerView内のデータ行数を決定
- (NSInteger)pickerView:(nonnull UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component {
    return self.picaData.count;
}

//UIPickerView内のデータ内容を決定
- (NSString*)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component{
    return self.picaData[row];
}
//UIPickerViewの値をLabelに代入する
//選択されたUIPickerViewの値を取得
- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component{
    self.picaLabel.text=self.picaData[row];
}

@end

