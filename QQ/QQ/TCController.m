//
//  TCController.m
//  QQ
//
//  Created by LZY on 16/8/7.
//  Copyright © 2016年 LZY. All rights reserved.
//

#import "TCController.h"
#import "ViewController.h"
#import "FirstController.h"
@interface TCController ()

@end

@implementation TCController

- (void)viewDidLoad {
    [super viewDidLoad];

    [self crateDtaCellWithDataSoucre:[self createData]];
}

//创建数据
- (NSMutableArray *)createData {
    //第一组
    HomeItem *item1 = [HomeItem homeItemWithIconIamge:@"aio_icons_groupvideo" title:@"看点" vc:[ViewController class]];
    HomeItem *item2 = [HomeItem homeItemWithIconIamge:@"aio_icons_location" title:@"京东购物" vc:[ViewController class]];
    HomeItem *item3 = [HomeItem homeItemWithIconIamge:@"aio_icons_music" title:@"阅读" vc:[ViewController class]];
    HomeItem *item4 = [HomeItem homeItemWithIconIamge:@"aio_icons_pacamera" title:@"音乐" vc:[ViewController class]];
    HomeItem *item5 = [HomeItem homeItemWithIconIamge:@"aio_icons_pic" title:@"NOW直播" vc:[ViewController class]];
    HomeItem *item6 = [HomeItem homeItemWithIconIamge:@"aio_icons_ptt" title:@"热门活动" vc:[ViewController class]];
    HomeGroup *group = [[HomeGroup alloc]init];
    group.header = @"dfndknf";
    group.footer = @"dmd";
    group.groups = @[item1, item2, item3, item4, item5, item6];
    [_dataSoucre addObject:group];
    
    //第二组
    HomeItem *item7 = [HomeItem homeItemWithIconIamge:@"aio_icons_red_pack" title:@"附近的群" vc:[FirstController class]];
    HomeItem *item8 = [HomeItem homeItemWithIconIamge:@"aio_icons_shake" title:@"吃喝玩乐" vc:[ViewController class]];
    HomeItem *item9 = [HomeItem homeItemWithIconIamge:@"aio_icons_share_nameplate" title:@"同城服务" vc:[ViewController class]];
    HomeItem *item10 = [HomeItem homeItemWithIconIamge:@"aio_icons_shotmovie" title:@"腾讯新闻" vc:[ViewController class]];
    HomeItem *item11 = [HomeItem homeItemWithIconIamge:@"aio_icons_togetherplay" title:@"运动" vc:[ViewController class]];
    HomeItem *item12 = [HomeItem homeItemWithIconIamge:@"aio_icons_video" title:@"腾讯课堂" vc:[ViewController class]];
    HomeGroup *group1 = [[HomeGroup alloc]init];
    group1.header = @"dfndknf";
    group1.footer = @"dmd";
    group1.groups = @[item7, item8, item9, item10, item11, item12];
    [_dataSoucre addObject:group1];
    
    return _dataSoucre;
    
}


@end
