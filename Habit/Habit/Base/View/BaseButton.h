//
//  BaseButton.h
//  Farm
//
//  Created by HENAN on 2018/8/2.
//  Copyright © 2018年 liyangshuai. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSUInteger, BaseButtonType) {
    BaseButtonTypeCustom,
    BaseButtonTypeSystem
};

@interface BaseButton : UIButton
/// 创建按钮
- (instancetype)initWithFrame:(CGRect)frame type:(BaseButtonType)type;
@end
