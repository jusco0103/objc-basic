//
//  main.m
//  miyashita-1.1.1
//
//  Created by 宮下良介 on 2018/02/19.
//  Copyright © 2018年 Ryosuke_Miyashita. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"
#import "1.1.4.h"

int main(int argc, char * argv[]) {
    @autoreleasepool {
//1.1.1 BOOL型、NSString型、NSInteger型、NSNumber型の変数を定義し、コンソールにログを出力する。(NSLog)

    //変数宣言
    BOOL logA=YES;
    NSString *logB=@"Test";
    NSInteger logC=10;
    NSNumber *logD=@100;

    //NSLog表示
    NSLog(@"BOOL=%d",logA);
    NSLog(@"NSString=%@",logB);
    NSLog(@"NSInteger=%ld",(long)logC);
    NSLog(@"NSNumber=%@",logD);

//1.1.2　NSArray型、NSDictionary型の変数を定義し、コンソールにログを出力する。(NSLog)

    //NSArray型の宣言
    NSArray *ar=@[@1,@2,@3,@4,@5];

    //NSDictonary型の宣言
    NSDictionary *dic=@{@"k1":@"val1",
                        @"k2":@"val2",
                        @"k3":@"val3",
                        };
    
    //NSLog(Array)
    NSLog(@"Array:%@",ar[0]);

    //NSLog(Dictionary)
    NSLog(@"Dictionary:%@",dic);
    NSLog(@"Dictionary:%@",dic[@"key1"]);

//1.1.3 if文、if〜else文、if〜else if文、三項演算子、for文、高速列挙構文、switchを利用したプログラムを作成し、結果をコンソールに出力する。

    //変数宣言
    NSInteger x=1;
    NSInteger y=2;

    //if文
    if(x==1){
        NSLog(@"OK");
    }
        
    //if~else文
    if(x==y){
        NSLog(@"NG");
    }else{
        NSLog(@"OK");
        }
        
    //if~else if文
    if(x==y){
        NSLog(@"NG1");
    }else if(x>y){
            NSLog(@"NG2");
    }else if(x<=1){
            NSLog(@"OK");
            }
        
    //三項演算子
    NSString *result=x>y ? @"x is larger!" : @"y is larger!";
    NSLog(@"%@",result);
        
    //for文
    for(int i=0; i<5; i++){
        NSLog(@"%d",i);
    }
        
    //高速列挙構文
    NSArray *ary = @[@1,@3,@5,@7,@2,@4,@6];
    for(NSString *logs in ary){
        NSLog(@"%@",logs);
    }
    
    //switch
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

//1.1.4 Accountクラスを作成し、インターンの参加者の一覧をコンソールにログを出力する。(NSLog)
        Account *inTurn=[[Account alloc]init];
        [inTurn method_log:@"太郎" age:15 sex:@"men" language:@"英語"];
        [inTurn method_log:@"花子" age:18 sex:@"women" language:@"韓国語"];
        
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
    }
}
