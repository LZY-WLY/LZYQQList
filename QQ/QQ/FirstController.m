//
//  FirstController.m
//  QQ
//
//  Created by LZY on 16/8/7.
//  Copyright © 2016年 LZY. All rights reserved.
//

#import "FirstController.h"

@interface FirstController ()

@end

@implementation FirstController
- (instancetype)initWithStyle:(UITableViewStyle)style {
    if (self = [super initWithStyle:UITableViewStyleGrouped]) {
        
    }
    return self;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    
   
      [self crateDtaCellWithDataSoucre:[self createData]];
}


//创建数据
- (NSMutableArray *)createData {
    
    //第二组
    HomeItem *item7 = [HomeItem homeItemWithIconIamge:@"aio_icons_red_pack" title:@"附近的群" vc:nil];
    HomeItem *item8 = [HomeItem homeItemWithIconIamge:@"aio_icons_shake" title:@"吃喝玩乐" vc:nil];
    HomeItem *item9 = [HomeItem homeItemWithIconIamge:@"aio_icons_share_nameplate" title:@"同城服务" vc:nil];
    HomeItem *item10 = [HomeItem homeItemWithIconIamge:@"aio_icons_shotmovie" title:@"腾讯新闻" vc:nil];
    HomeItem *item11 = [HomeItem homeItemWithIconIamge:@"aio_icons_togetherplay" title:@"运动" vc:nil];
    HomeItem *item12 = [HomeItem homeItemWithIconIamge:@"aio_icons_video" title:@"腾讯课堂" vc:nil];
    HomeGroup *group1 = [[HomeGroup alloc]init];
    group1.header = @"dfndknf";
    group1.footer = @"dmd";
    group1.groups = @[item7, item8, item9, item10, item11, item12];
    [_dataSoucre addObject:group1];
    
    return _dataSoucre;
    
}

@end
