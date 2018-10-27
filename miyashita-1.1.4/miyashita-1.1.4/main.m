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

//オブジェクトinTurnの初期化（インスタンスの生成）
    
    Account *Taro=[[Account alloc]initWithName:@"Taro" age:18 sex:@"men" language:@"English"];
    Account *Keiko=[[Account alloc]initWithName:@"Keiko" age:14 sex:@"men" language:@"Korean"];
    
    NSLog(@"%@君は、%@が得意な%ld歳です。",Taro.name,Taro.language,(long)Taro.age);
    NSLog(@"%@さんは、%@が得意な%ld歳です。",Keiko.name,Keiko.language,(long)Keiko.age);
}
