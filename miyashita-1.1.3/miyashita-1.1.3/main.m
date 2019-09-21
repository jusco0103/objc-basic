//
//  main.m
//  miyashita-1.1.3
//
//  Created by 宮下良介 on 2018/02/21.
//  Copyright © 2018年 Ryosuke_Miyashita. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //1.1.3 if文、if〜else文、if〜else if文、三項演算子、for文、高速列挙構文、switchを利用したプログラムを作成し、結果をコンソールに出力する。
        
        //変数宣言
        NSInteger x=1;
        NSInteger y=2;
        
        //if文
        //(条件1：x=1である 処理1：コンソールに"OK"表示)
        if(x==1){
            NSLog(@"OK");
        }
        
        //if~else文
        //(条件1：x=yである 処理1：コンソールに"NG"表示)
        //(条件2：条件1以外 処理1：コンソールに"OK"表示)
        if(x==y){
            NSLog(@"NG");
        }else{
            NSLog(@"OK");
        }
        
        //if~else if文
        //(条件1：x=yである 処理1：コンソールに"NG1"表示)
        //(条件2：x>yである 処理1：コンソールに"NG2"表示)
        //(条件3：xがy以下である 処理1：コンソールに"OK"表示)
        //(条件4：条件1,2,3以外 処理1：コンソールに"Unknown"表示)
        if(x==y){
            NSLog(@"NG1");
        }else if(x>y){
            NSLog(@"NG2");
        }else if(x<=1){
            NSLog(@"OK");
        }else{
            NSLog(@"Unknown");
            }
        
        //三項演算子
        //（条件：x>yである 処理：条件が正->コンソールに"x is larger!"表示　：条件が偽->"y is larger!"表示）
        NSString *result=x>y ? @"x is larger!" : @"y is larger!";
        NSLog(@"%@",result);
        
        //for文
        //（繰り返し回数：６回　処理：コンソールに変数iの値を表示）
        for(int i=0; i<6; i++){
            NSLog(@"%d",i);
        }
        
        //高速列挙構文
        //(格納する値：配列ary　格納先：変数log 処理：コンソールに変数logの値を表示)
        NSArray *ary = @[@1,@3,@5,@7,@2,@4,@6];
        for(NSString *logs in ary){
            NSLog(@"%@",logs);
        }
        
        //switch文
        //変数：x
        //値：0　処理：コンソールに"NG"表示
        //値：1 処理：コンソールに"OK"表示
        //defaultの処理：コンソールに"Unknown"表示
        switch(x){
            case 0:
                NSLog(@"NG");
                break;
            case 1:
                NSLog(@"OK");
                break;
            default:
                NSLog(@"Unknown");
                break;
        }

    }
    return 0;
}
