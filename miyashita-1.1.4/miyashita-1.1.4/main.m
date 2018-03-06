//
//  main.m
//  miyashita-1.1.4
//
//  Created by 宮下良介 on 2018/02/21.
//  Copyright © 2018年 Ryosuke_Miyashita. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Account.h"

int main(int argc, const char * argv[]) {
    
//オブジェクトinTurnの初期化
Account *inTurn=[[Account alloc]init];
    inTurn.name=@"Takeshi";
    inTurn.age=18;
    inTurn.sex=@"men";
    inTurn.language=@"English";
    
    [inTurn method_log];

    return 0;
}
