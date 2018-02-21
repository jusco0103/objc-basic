//
//  main.m
//  miyashita-1.1.4
//
//  Created by 宮下良介 on 2018/02/21.
//  Copyright © 2018年 Ryosuke_Miyashita. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "1.1.4.h"

int main(int argc, const char * argv[]) {
    
//オブジェクトinTurnの初期化
    Account *inTurn=[[Account alloc]init];
    
    //メソッドに引数の受け渡し
    [inTurn method_log:@"太郎" age:15 sex:@"men" language:@"英語"];
    [inTurn method_log:@"花子" age:18 sex:@"women" language:@"韓国語"];
    
    return 0;
}
