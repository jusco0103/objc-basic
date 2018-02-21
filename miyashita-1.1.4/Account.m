//
//  Account.m
//  miyashita-1.1.4
//
//  Created by 宮下良介 on 2018/02/21.
//  Copyright © 2018年 Ryosuke_Miyashita. All rights reserved.
//

#import "Account.h"

//メソッドの実装
@implementation Account
-(void)method_log:(NSString*)name
              age:(NSInteger)age
              sex:(NSString*)sex
         language:(NSString*)language;{

    //処理（もし変数sexが"men"の場合はコンソール◯◯君〜表示、"women"の場合はコンソール◯◯さん〜表示）
    if([sex isEqual:@"men"]){
        NSLog(@"%@君は、%@が得意な%ld歳です。",name,language,(long)age);
    }
    else if([sex isEqual:@"women"]){
        NSLog(@"%@さんは、%@が得意な%ld歳です。",name,language,(long)age);
    }
}

@end
