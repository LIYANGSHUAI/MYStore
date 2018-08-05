//
//  UIView+UI.m
//  Packet
//
//  Created by liyangshuai on 2018/5/27.
//  Copyright © 2018年 liyangshuai. All rights reserved.
//

#import "UIView+UI.h"
#import <objc/runtime.h>

@implementation UIView (UI)
- (UIView *)addBorderLineWithColor:(UIColor *)lineColor lineWidth:(CGFloat)lineWidth type:(BorderLineType)type
{
    UIImageView *line = [[UIImageView alloc] initWithImage:[UIImage ly_imageWithColor:lineColor alpha:1]];
    
    if (type == BorderLineTypeTop) {
        line.frame = CGRectMake(0, 0, self.ly_width, lineWidth);
    } else if (type == BorderLineTypeLeft) {
        line.frame = CGRectMake(0, 0, lineWidth, self.ly_height);
    } else if (type == BorderLineTypeRight) {
        line.frame = CGRectMake(self.ly_width-lineWidth, 0, lineWidth, self.ly_height);
    } else if (type == BorderLineTypeBottom) {
        line.frame = CGRectMake(0, self.ly_height-lineWidth, self.ly_width, lineWidth);
    }
    [self addSubview:line];
    return line;
}
- (UITapGestureRecognizer *)addTapGetsureWithTarget:(id)target action:(SEL)action
{
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:target action:action];
    [self addGestureRecognizer:tap];
    self.userInteractionEnabled = YES;
    return tap;
}
- (UITapGestureRecognizer *)addTapGetsureWithBlock:(void(^)(UITapGestureRecognizer *sender))block
{
    objc_setAssociatedObject(self, @"tapAction", block, OBJC_ASSOCIATION_COPY);
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tapAction:)];
    [self addGestureRecognizer:tap];
    self.userInteractionEnabled = YES;
    return tap;
}
- (void)tapAction:(UITapGestureRecognizer *)sender
{
    id block = objc_getAssociatedObject(self, @"tapAction");
    ((void(^)(UITapGestureRecognizer *sender))block)(sender);
}
- (void)removeAllSubViews
{
    for (UIView *view in self.subviews) {
        [view removeFromSuperview];
    }
}
+ (UIView *)createArcWithRadius:(CGFloat)radius color:(UIColor *)color
{
    UIView *view = [[UIView alloc] init];
    view.frame = CGRectMake(0, 0, radius * 2, radius * 2);
    view.backgroundColor = color;
    view.layer.cornerRadius = radius;
    view.layer.masksToBounds = YES;
    return view;
}
+ (UIImageView *)createArcWithRadius:(CGFloat)radius color:(UIColor *)color image:(UIImage *)image
{
    UIImageView *imageView = [[UIImageView alloc] initWithImage:[UIImage ly_imageWithColor:color alpha:1]];
    imageView.frame = CGRectMake(0, 0, radius * 2, radius * 2);
    imageView.layer.cornerRadius = radius;
    imageView.layer.masksToBounds = YES;
    
    UIImageView *subImg = [[UIImageView alloc] initWithImage:image];
    subImg.frame = CGRectMake(0, 0, radius, radius);
    subImg.center = imageView.ly_interiorCenter;
    [imageView addSubview:subImg];
    
    return imageView;
}

@end
