//
//  ViewController.m
//  miyashita-2.1.10
//
//  Created by 宮下良介 on 2018/03/12.
//  Copyright © 2018年 Ryosuke_Miyashita. All rights reserved.
//

#import "ViewController.h"
#import "CustomTableViewCell.h"

@interface ViewController ()
@property(strong,nonatomic)NSArray *Images;
@property(strong,nonatomic)NSArray *titles;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.tableView.delegate=self;
    self.tableView.dataSource=self;

    //NSBundleを取得
    NSBundle *bundle=[NSBundle mainBundle];
    //pathにProperty List.plistを指定
    NSString *path=[bundle pathForResource:@"Property List" ofType:@"plist"];
    //plistの内容をdicに格納
    NSDictionary *dic=[NSDictionary dictionaryWithContentsOfFile:path];
    //text,imageそれぞれにdicのキーを元にデータを格納
    NSArray *titles=[dic objectForKey:@"text"];
    NSArray *images=[dic objectForKey:@"image"];
    //最初に宣言したImage,Textに格納
    _Images=images;
    _titles=titles;
    
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
//データの数をreturnする。Imagesの数と同じ。
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return _Images.count;
}

//データの内容をreturn、Images、titleのインデックスを指定して格納
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    CustomTableViewCell *cell=(CustomTableViewCell *)[tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    //    cell.imagesView.layer.masksToBounds = YES;
    cell.imagesView.image = [UIImage imageNamed:_Images[indexPath.row]];
    cell.titles.text=_titles[indexPath.row];
    
    return cell;
}

@end
