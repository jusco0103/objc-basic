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

- (void)method_log{
    
    if([_sex isEqual:@"men"]){
        NSLog(@"%@君は、%@が得意な%ld歳です。",_name,_language,(long)_age);
    }
    
}


@end
