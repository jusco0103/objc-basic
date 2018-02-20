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
#import <stdio.h>

@interface Account:NSObject{
    @private
    NSString *name;
    NSInteger age;
    NSString *sex;
    NSString *language;
    NSString *aaa;
}
-(void)method_log;
@end

#endif /* __1_3_h */
