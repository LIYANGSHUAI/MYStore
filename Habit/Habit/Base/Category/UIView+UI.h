//
//  UIView+UI.h
//  Packet
//
//  Created by liyangshuai on 2018/5/27.
//  Copyright © 2018年 liyangshuai. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSUInteger, BorderLineType) {
    BorderLineTypeLeft,
    BorderLineTypeTop,
    BorderLineTypeRight,
    BorderLineTypeBottom
};

@interface UIView (UI)
/// 给视图添加边框线
- (UIView *)addBorderLineWithColor:(UIColor *)lineColor lineWidth:(CGFloat)lineWidth type:(BorderLineType)type;
/// 添加点击事件
- (UITapGestureRecognizer *)addTapGetsureWithTarget:(id)target action:(SEL)action;
- (UITapGestureRecognizer *)addTapGetsureWithBlock:(void(^)(UITapGestureRecognizer *sender))block;
/// 移除所有子视图
- (void)removeAllSubViews;

// 创建圆
+ (UIView *)createArcWithRadius:(CGFloat)radius color:(UIColor *)color;
+ (UIImageView *)createArcWithRadius:(CGFloat)radius color:(UIColor *)color image:(UIImage *)image;
@end
