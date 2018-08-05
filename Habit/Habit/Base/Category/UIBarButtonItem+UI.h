//
//  UIBarButtonItem+UI.h
//  Packet
//
//  Created by HENAN on 2018/5/31.
//  Copyright © 2018年 liyangshuai. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSUInteger, BarButtonItemType) {
    BarButtonItemTypeLeft,
    BarButtonItemTypeCenter,
    BarButtonItemTypeRight,
};

@interface UIBarButtonItem (UI)
+ (instancetype)barButtonWithStr:(NSString *)imageStr
                       tingColor:(UIColor *)tingColor
                            type:(BarButtonItemType)type
                          target:(id)target
                          action:(SEL)action;
@end
