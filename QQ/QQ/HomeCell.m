//
//  HomeCell.m
//  QQ
//
//  Created by LZY on 16/8/7.
//  Copyright © 2016年 LZY. All rights reserved.
//

#import "HomeCell.h"
#import "HomeItem.h"
@implementation HomeCell
- (instancetype)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        NSLog(@"55555");
    }
    return self;
}
- (void)setItem:(HomeItem *)item {
    _item = item;
    self.imageView.image = [UIImage imageNamed:item.iconIamge];
    self.textLabel.text = item.title;
    if (self.accessoryType != UITableViewCellAccessoryDisclosureIndicator) {
        self.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    }
}
@end
