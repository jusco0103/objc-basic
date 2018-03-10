//
//  ViewController.m
//  miyashita-2.1.10
//
//  Created by 宮下良介 on 2018/03/08.
//  Copyright © 2018年 Ryosuke_Miyashita. All rights reserved.
//

#import "ViewController.h"

typedef NS_ENUM(NSUInteger, Class){
    fish = 0,
    animal,
};

@interface ViewController ()
@property(nonatomic) NSArray *fish;
@property(nonatomic) NSArray *animal;
@property NSDictionary *dic;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //UITableViewのdelegate,DataSourceを自身にする
    _tableView.delegate=self;
    _tableView.dataSource=self;
    //プロジェクト内のファイルにアクセスできるオブジェクトを宣言
    NSBundle *bundle = [NSBundle mainBundle];
    //読み込むプロパティリストのファイルパスを指定
    NSString *path = [bundle pathForResource:@"Property List" ofType:@"plist"];
    //プロパティリストの中身データを取得
    self.dic = [NSDictionary dictionaryWithContentsOfFile:path];
    NSArray *fish = [self.dic objectForKey:@"fish"];
    NSArray *animal = [self.dic objectForKey:@"animal"];

    //取得できた配列データをメンバ変数に代入
    self.fish = fish;
    self.animal = animal;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return self.dic.count;
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    // セクションタイトルの文字列変数を宣言
    NSString *title;

    // 表示しているセクションのタイトルを
    switch (section) {
        case fish:
            title = @"fish";
            break;
        case animal:
            title = @"animal";
            break;
        default:
            break;
    }
    return title;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    
    NSLog(@"indexpath:%ld",(long)indexPath.section);
    NSLog(@"fish:%lu",(unsigned long)fish);
    NSLog(@"animal:%lu",(unsigned long)animal);
    NSString *itemName;
    switch (indexPath.section) {
        case fish:
            itemName = self.fish[indexPath.row];
            break;
        case animal:
            itemName = self.animal[indexPath.row];
            break;
        default:
            break;
    }
    cell.textLabel.text = itemName;
    return cell;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    // Return the number of rows in the section.
    //データの数によって行数が増える。
    NSInteger rows = 0;
    switch (section) {
        case fish:
            rows = [self.fish count];
            break;
        case animal:
            rows = [self.animal count];
            break;
        default:
            break;
    }
    return rows;

}

@end
