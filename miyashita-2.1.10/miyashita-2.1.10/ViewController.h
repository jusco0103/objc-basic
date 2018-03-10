//
//  ViewController.h
//  miyashita-2.1.10
//
//  Created by 宮下良介 on 2018/03/08.
//  Copyright © 2018年 Ryosuke_Miyashita. All rights reserved.
//
/*各行に任意の画像と文字列を表示する。
なお、文字列は一行以上表示するものとし、セルの高さは可変とする。
また、表示するデータはplistより取得するものとする。*/

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UITableViewDelegate,UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UITableView *tableView;


@end

