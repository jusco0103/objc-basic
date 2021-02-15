//
//  Account.m
//  miyashita-1.1.5
//
//  Created by 宮下良介 on 2018/03/29.
//  Copyright © 2018年 Ryosuke_Miyashita. All rights reserved.
//

#import "Account.h"

//メソッドの実装

@implementation Account

//指定イニシャライザの処理を記載

-(id)initWithName:(NSString*)name
              age:(NSInteger)age
              sex:(NSString*)sex
         language:(NSString*)language{
    if( self = [super init] )
    {
        self.name = name;
        self.age = age;
        self.sex = sex;
        self.language = language;
    }
    
    return self;
}

- (void)calljoinInternship{
    FavoriteProgrammingLanguage *favoritePrograminglanguage = [[FavoriteProgrammingLanguage alloc]init];
    favoritePrograminglanguage.delegate=self;
    [favoritePrograminglanguage joinInternShip];
}

@end
