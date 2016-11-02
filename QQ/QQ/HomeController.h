//
//  HomeController.h
//  QQ
//
//  Created by LZY on 16/8/7.
//  Copyright © 2016年 LZY. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "HomeItem.h"
#import "HomeGroup.h"

#import "HomeCell.h"
@interface HomeController : UITableViewController
{
    NSMutableArray *_dataSoucre;
}
- (void)crateDtaCellWithDataSoucre:(NSMutableArray *)dataSoucre;
@end
