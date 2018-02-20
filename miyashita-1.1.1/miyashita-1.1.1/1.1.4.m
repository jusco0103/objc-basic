//
//  1.1.4.m
//  miyashita-1.1.1
//
//  Created by 宮下良介 on 2018/02/20.
//  Copyright © 2018年 Ryosuke_Miyashita. All rights reserved.
//


#import <Foundation/Foundation.h>
//1.1.4インターフェースのインポート
#import "1.1.4.h"

//メソッドの定義
@implementation Account
-(void)method_log:(NSString*)name age:(NSInteger)age sex:(NSString*)sex language:(NSString*)language;{
//処理
    if([sex isEqual:@"men"]){
        NSLog(@"%@君は、%@が得意な%ld歳です。",name,language,(long)age);
    }
    else if([sex isEqual:@"women"]){
        NSLog(@"%@さんは、%@が得意な%ld歳です。",name,language,(long)age);
    }
}
@end
