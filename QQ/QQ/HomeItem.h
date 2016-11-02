//
//  HomeItem.h
//  QQ
//
//  Created by LZY on 16/8/7.
//  Copyright © 2016年 LZY. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface HomeItem : NSObject
///图片
@property (nonatomic, copy) NSString *iconIamge;
///标题
@property (nonatomic, copy) NSString *title;
///控制器
@property (nonatomic, assign) Class vc;
- (instancetype)initWithIconIamge:(NSString *)iconIamge title:(NSString *)title vc:(Class)vc;
+ (instancetype)homeItemWithIconIamge:(NSString *)iconIamge title:(NSString *)title vc:(Class)vc;
@end
