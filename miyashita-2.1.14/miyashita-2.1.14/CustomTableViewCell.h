//
//  CustomTableViewCell.h
//  miyashita-2.1.14
//
//  Created by 宮下良介 on 2018/03/20.
//  Copyright © 2018年 Ryosuke_Miyashita. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CustomTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UIImageView *imagesView;
@property (weak, nonatomic) IBOutlet UILabel *titles;

@end
