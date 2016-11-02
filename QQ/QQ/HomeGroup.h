//
//  HomeGroup.h
//  QQ
//
//  Created by LZY on 16/8/7.
//  Copyright © 2016年 LZY. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface HomeGroup : NSObject
///header
@property (nonatomic, copy) NSString *header;
///footer
@property (nonatomic, copy) NSString *footer;
///数组
@property (nonatomic, strong) NSArray *groups;
@end
