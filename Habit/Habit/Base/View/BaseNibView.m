//
//  BaseNibView.m
//  Farm
//
//  Created by HENAN on 2018/8/2.
//  Copyright © 2018年 liyangshuai. All rights reserved.
//

#import "BaseNibView.h"

@implementation BaseNibView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self = [[[NSBundle mainBundle] loadNibNamed:NSStringFromClass([self class]) owner:nil options:nil] lastObject];
        self.frame = frame;
        self.autoresizingMask = UIViewAutoresizingNone;
    }
    return self;
}

@end
