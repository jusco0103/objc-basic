//
//  1.1.4.h
//  miyashita-1.1.1
//
//  Created by 宮下良介 on 2018/02/20.
//  Copyright © 2018年 Ryosuke_Miyashita. All rights reserved.
//

#ifndef __1_3_h
#define __1_3_h

#import <Foundation/Foundation.h>

//クラス宣言
@interface Account:NSObject{
//インスタンス変数(プロパティ)宣言
@private
    NSString *name;
    NSInteger age;
    NSString *sex;
    NSString *language;
}
//メソッド宣言
-(void)method_log:(NSString*)name age:(NSInteger)age sex:(NSString*)sex language:(NSString*)language;
@end

#endif /* __1_3_h */
