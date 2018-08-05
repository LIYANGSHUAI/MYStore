//
//  BaseButton.m
//  Farm
//
//  Created by HENAN on 2018/8/2.
//  Copyright © 2018年 liyangshuai. All rights reserved.
//

#import "BaseButton.h"

@implementation BaseButton

- (instancetype)initWithFrame:(CGRect)frame type:(BaseButtonType)type
{
    if (type == BaseButtonTypeSystem)
    {
        self = [[self class] buttonWithType:(UIButtonTypeSystem)];
    } else
    {
        self = [[self class] buttonWithType:(UIButtonTypeCustom)];
    }
    if (self) {
        self.frame = frame;
        [self initDefaultParams];
    }
    return self;
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        [self initDefaultParams];
    }
    return self;
}

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self initDefaultParams];
    }
    return self;
}

- (void)initDefaultParams
{
    [self setTitleColor:[UIColor blackColor] forState:(UIControlStateNormal)];
    self.titleLabel.font = [UIFont systemFontOfSize:15];
    self.layer.cornerRadius = 3;
    self.layer.masksToBounds = YES;
}

@end
