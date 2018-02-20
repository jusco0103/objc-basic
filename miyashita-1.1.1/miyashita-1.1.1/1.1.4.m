//
//  1.1.4.m
//  miyashita-1.1.1
//
//  Created by 宮下良介 on 2018/02/20.
//  Copyright © 2018年 Ryosuke_Miyashita. All rights reserved.
//
//クラスの宣言


#import <Foundation/Foundation.h>
#import "1.1.3.h"

@implementation Account
-(void)method_log{
    sex=@"men";
    if([sex isEqual:@"men"]){
        NSLog(@"%@君は、%@が得意な%ld歳です。",name,language,(long)age);
    }
    else if([sex isEqual:@"women"]){
        NSLog(@"%@さんは、%@が得意な%ld歳です。",name,language,(long)age);
    }
}
@end
