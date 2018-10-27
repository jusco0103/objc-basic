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

-(id)initWithName:(NSString*)name
              age:(NSInteger)age
              sex:(NSString*)sex
         language:(NSString*)language{
    if( self = [super init] )
    {
        self.name = name;
        self.age = age;
        self.sex = sex;
        self.language = landguage;
    }

    return self;
}
@end


