//
//  ViewController.m
//  miyashita-2.1.10
//
//  Created by 宮下良介 on 2018/03/12.
//  Copyright © 2018年 Ryosuke_Miyashita. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UITableViewDataSource,UITableViewDelegate>

@property(strong,nonatomic)NSArray *name;
@property(strong,nonatomic)NSArray *descript;
@property(strong,nonatomic)NSArray *image;

@end

@implementation ViewController

//TableViewの高さを調整する
- (void)viewDidLoad {
    [self storePlist];
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.myTableView.estimatedRowHeight = 400;
    self.myTableView.rowHeight = UITableViewAutomaticDimension;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//TackleList.plistの値を変数に格納する
- (void)storePlist {
    // tacklesにplistの値を格納
    NSArray *tackles = [[NSArray alloc]initWithContentsOfFile:[[NSBundle mainBundle]pathForResource:@"TackleList" ofType:@"plist"]];
    
    self.name = [tackles valueForKey:@"name"];
    
    self.descript = [tackles valueForKey:@"description"];
    
    self.image = [tackles valueForKey:@"image"];

}

//セクションの数を定義する
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.name.count;
}

//TableViewCellの中身を定義する
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [self.myTableView dequeueReusableCellWithIdentifier:@"MyCell" forIndexPath:indexPath];
//画像を配置する
    NSString *imageName = self.image[indexPath.row];
    UIImage *img = [UIImage imageNamed:imageName];
    UIImageView *imageView = (UIImageView *)[cell viewWithTag:1];
    imageView.image = img;
//タイトル文字を配置する
    UILabel *titles = (UILabel *)[cell viewWithTag:2];
    titles.text = self.name[indexPath.row];
//説明文を配置する
    UILabel *description = (UILabel *)[cell viewWithTag:3];
    description.text = self.descript[indexPath.row];

    return cell;
}

@end
