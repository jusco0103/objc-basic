//
//  FavoriteProgrammingLanguage.h
//  miyashita-1.1.5
//
//  Created by 宮下良介 on 2018/03/29.
//  Copyright © 2018年 Ryosuke_Miyashita. All rights reserved.
//

//
#import <Foundation/Foundation.h>

//デリゲートするプロトコルを定義する
@protocol FavoriteProgrammingLanguageDelegate<NSObject>

//オプショナルなメソッドを記載
@optional
- (void)canDoObjC;

@end

//FavoriteProgrammingLanguageクラスを定義
@interface FavoriteProgrammingLanguage : NSObject

//プロパティでデリゲートを定義する
@property (weak,nonatomic) id<FavoriteProgrammingLanguageDelegate> delegate;

//メソッドを宣言
- (void)joinInternShip;

@end
