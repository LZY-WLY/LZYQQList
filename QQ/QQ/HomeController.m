//
//  HomeController.m
//  QQ
//
//  Created by LZY on 16/8/7.
//  Copyright © 2016年 LZY. All rights reserved.
//

#import "HomeController.h"

@interface HomeController ()

@end

@implementation HomeController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _dataSoucre = [NSMutableArray array];
    
}
- (void)crateDtaCellWithDataSoucre:(NSMutableArray *)dataSoucre {
    [self.tableView registerClass:[HomeCell class] forCellReuseIdentifier:@"cell"];
    [self.tableView reloadData];
}
#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    return _dataSoucre.count;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return [_dataSoucre[section] groups].count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    HomeCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    
    cell.item = [_dataSoucre[indexPath.section] groups][indexPath.row];
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    HomeItem *item = [_dataSoucre[indexPath.section] groups][indexPath.row];
    [self.navigationController pushViewController:[[item.vc alloc]init] animated:YES];
}


@end
