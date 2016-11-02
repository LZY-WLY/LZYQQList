//
//  HomeItem.m
//  QQ
//
//  Created by LZY on 16/8/7.
//  Copyright © 2016年 LZY. All rights reserved.
//

#import "HomeItem.h"

@implementation HomeItem
- (instancetype)initWithIconIamge:(NSString *)iconIamge title:(NSString *)title vc:(__unsafe_unretained Class)vc {
    if (self = [super init]) {
        self.iconIamge = iconIamge;
        self.title = title;
        self.vc = vc;
    }
    return self;
}
+ (instancetype)homeItemWithIconIamge:(NSString *)iconIamge title:(NSString *)title vc:(__unsafe_unretained Class)vc {
    return [[self alloc]initWithIconIamge:iconIamge title:title vc:vc];
}
@end
