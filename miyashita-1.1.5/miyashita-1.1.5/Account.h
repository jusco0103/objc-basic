//
//  Account.h
//  miyashita-1.1.5
//
//  Created by 宮下良介 on 2018/03/29.
//  Copyright © 2018年 Ryosuke_Miyashita. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FavoriteProgrammingLanguage.h"

//クラスAccountを宣言
@interface Account : NSObject<FavoriteProgrammingLanguageDelegate>

//インスタンス変数(プロパティ)の定義
@property NSString *name;
@property NSInteger age;
@property NSString *sex;
@property NSString *language;

//指定イニシャライザの定義
-(id)initWithName:(NSString*)name
              age:(NSInteger)age
              sex:(NSString*)sex
         language:(NSString*)language;

//デリゲートの設定をするメソッド
-(void)calljoinInternship;

@end
