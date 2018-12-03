//
//  main.m
//  miyashita-1.1.1
//
//  Created by 宮下良介 on 2018/02/21.
//  Copyright © 2018年 Ryosuke_Miyashita. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
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
    
    }
    return 0;
}
