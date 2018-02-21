//
//  Account.h
//  miyashita-1.1.4
//
//  Created by 宮下良介 on 2018/02/21.
//  Copyright © 2018年 Ryosuke_Miyashita. All rights reserved.
//

#import <Foundation/Foundation.h>
//Accountクラスを作成し、インターンの参加者の一覧をコンソールにログを出力する。(NSLog)
//Accountクラスには、下記のプロパティとメソッドを定義する。
//【プロパティ】
//氏名：文字列型　年齢：整数型　性別：文字列型　得意な言語：文字列型
//【メソッド】
//男性の場合、「○○君は、○○が得意な○○歳です。」と表示する
//女性の場合、「○○さんは、○○が得意な○○歳です。」と表示する。

//クラスAccountを宣言
@interface Account : NSObject{

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
