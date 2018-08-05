//
//  BaseTextField.m
//  Farm
//
//  Created by HENAN on 2018/8/2.
//  Copyright © 2018年 liyangshuai. All rights reserved.
//

#import "BaseTextField.h"

@implementation BaseTextField

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.textColor = [UIColor blackColor];
        self.font = [UIFont systemFontOfSize:15];
        self.clearButtonMode = UITextFieldViewModeWhileEditing;
        self.leftViewMode = UITextFieldViewModeAlways;
        self.leftView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 10, 10)];
    }
    return self;
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.textColor = [UIColor blackColor];
        self.font = [UIFont systemFontOfSize:15];
        self.clearButtonMode = UITextFieldViewModeWhileEditing;
        self.leftViewMode = UITextFieldViewModeAlways;
        self.leftView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 10, 10)];
    }
    return self;
}

- (void)setPlaceholderColor:(UIColor *)placeholderColor
{
    _placeholderColor = placeholderColor;
    if (self.placeholder) {
        NSMutableAttributedString *mStr = [[NSMutableAttributedString alloc] initWithString:self.placeholder];
        [mStr addAttribute:NSForegroundColorAttributeName value:_placeholderColor range:NSMakeRange(0, self.placeholder.length)];
        self.attributedPlaceholder = mStr;
    }
}

- (void)setPlaceholder:(NSString *)placeholder
{
    [super setPlaceholder:placeholder];
    if (self.placeholderColor) {
        NSMutableAttributedString *mStr = [[NSMutableAttributedString alloc] initWithString:self.placeholder];
        [mStr addAttribute:NSForegroundColorAttributeName value:self.placeholderColor range:NSMakeRange(0, self.placeholder.length)];
        self.attributedPlaceholder = mStr;
    }
}

@end
