//
//  UIBarButtonItem+UI.m
//  Packet
//
//  Created by HENAN on 2018/5/31.
//  Copyright © 2018年 liyangshuai. All rights reserved.
//

#import "UIBarButtonItem+UI.h"

@implementation UIBarButtonItem (UI)
+ (instancetype)barButtonWithStr:(NSString *)imageStr
                       tingColor:(UIColor *)tingColor
                            type:(BarButtonItemType)type
                          target:(id)target
                          action:(SEL)action
{
    UIButton *btn = [UIButton buttonWithType:(UIButtonTypeSystem)];
    btn.frame = CGRectMake(0, 0, 40, 40);
    switch (type) {
        case BarButtonItemTypeLeft:
        {
            [btn setImageEdgeInsets:UIEdgeInsetsMake(7.5, 0, 7.5, 15)];
        }
            break;
        case BarButtonItemTypeCenter:
        {
            
        }
            break;
        case BarButtonItemTypeRight:
        {
            [btn setImageEdgeInsets:UIEdgeInsetsMake(7.5, 15, 7.5, 0)];
        }
            break;
        default:
            break;
    }
    btn.tintColor = tingColor;
    [btn addTarget:target action:action forControlEvents:(UIControlEventTouchUpInside)];
    [btn setImage:[UIImage imageNamed:imageStr] forState:(UIControlStateNormal)];
    return [[UIBarButtonItem alloc] initWithCustomView:btn];
}
@end
