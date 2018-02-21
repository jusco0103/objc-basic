//
//  main.m
//  miyashita-1.1.2
//
//  Created by 宮下良介 on 2018/02/21.
//  Copyright © 2018年 Ryosuke_Miyashita. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //1.1.2　NSArray型、NSDictionary型の変数を定義し、コンソールにログを出力する。(NSLog)
        
        //NSArray型の宣言
        NSArray *ar=@[@1,@2,@3,@4,@5];
        
        //NSDictonary型の宣言
        NSDictionary *dic=@{@"k1":@"val1",
                            @"k2":@"val2",
                            @"k3":@"val3",
                            };
        
        //NSLog(Array)で配列arの添字0の値を表示する
        NSLog(@"Array:%@",ar[0]);
        
        //NSLog(Dictionary)で辞書配列dicの内容と、k2の値を表示する
        NSLog(@"Dictionary:%@",dic);
        NSLog(@"Dictionary:%@",dic[@"k2"]);
    
    }
    return 0;
}
