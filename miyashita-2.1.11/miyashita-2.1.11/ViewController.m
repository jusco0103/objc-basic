//
//  ViewController.m
//  miyashita-2.1.11
//
//  Created by 宮下良介 on 2018/03/12.
//  Copyright © 2018年 Ryosuke_Miyashita. All rights reserved.
//

#import "ViewController.h"
#import "CustomTableViewCell.h"

typedef NS_ENUM(NSUInteger,Class) {
    reelCount=0,
    rodCount
};

@interface ViewController ()
@property(nonatomic)NSArray *Reel;
@property(nonatomic)NSArray *Rod;
@property(nonatomic)NSArray *imgName;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.tableView.dataSource=self;
    self.tableView.delegate=self;
    
    NSBundle *bundle = [NSBundle mainBundle];
    NSString *path = [bundle pathForResource:@"Property List" ofType:@"plist"];
    NSDictionary *dic = [NSDictionary dictionaryWithContentsOfFile:path];

    NSArray *reel=[dic objectForKey:@"Reel"];
    NSArray *rod=[dic objectForKey:@"Rod"];
    
    self.Reel=reel;
    self.Rod=rod;
    
    self.imgName=@[@"Image-0",@"Image-1",@"Image-2",
                       @"Image-3",@"Image-4",@"Image-5"];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 2;
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    NSString *Title;
    switch(section)
    {
        case reelCount:
            Title = @"Reel";
            break;
        case rodCount:
            Title = @"Rod";
            break;
        default:
            break;
    }
    return Title;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    NSInteger rows = 0;
    switch(section)
    {
        case reelCount:
            rows = [self.Reel count];
            break;
        case rodCount:
            rows = [self.Rod count];
            break;
        default:
            break;
    }
    return rows;
};

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath;
{
    CustomTableViewCell *cell=(CustomTableViewCell *)[tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];

    NSString *item;
    switch(indexPath.section)
    {
        case reelCount:
            item = self.Reel[indexPath.row];
            cell.imageView.image=[UIImage imageNamed:self.imgName[indexPath.row]];

            break;
        case rodCount:
            item = self.Rod[indexPath.row];
            NSInteger path3 = indexPath.row+3;
            cell.imageView.image=[UIImage imageNamed:self.imgName[path3]];
            break;
        default:
            break;
    }
    cell.label.text = item;
    return cell;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
