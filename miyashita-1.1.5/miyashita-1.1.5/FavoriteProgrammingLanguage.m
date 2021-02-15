//
//  FavoriteProgrammingLanguage.m
//  miyashita-1.1.5
//
//  Created by 宮下良介 on 2018/03/29.
//  Copyright © 2018年 Ryosuke_Miyashita. All rights reserved.
//


#import "FavoriteProgrammingLanguage.h"

@implementation FavoriteProgrammingLanguage

//デリゲートメソッドの実装部分を記載

//オプショナルメソッドを実装
-(void)canDoObjC{
    NSLog(@"Obj-Cができます");
}

//オプショナルメソッドを呼び出すメソッドを実装
- (void)joinInternShip{
    if([self.delegate respondsToSelector:@selector(canDoObjC)]){
    [self canDoObjC];
    }
}

@end
