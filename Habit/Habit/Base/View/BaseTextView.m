//
//  BaseTextView.m
//  Farm
//
//  Created by HENAN on 2018/8/2.
//  Copyright © 2018年 liyangshuai. All rights reserved.
//

#import "BaseTextView.h"

@interface BaseTextView ()
@property (nonatomic, strong) UILabel *placeholderLabel;
@end

@implementation BaseTextView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.textColor = [UIColor blackColor];
        self.font = [UIFont systemFontOfSize:15];
        [self custtomSubViws];
    }
    return self;
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.textColor = [UIColor blackColor];
        self.font = [UIFont systemFontOfSize:15];
        [self custtomSubViws];
    }
    return self;
}

- (void)setPlaceholder:(NSString *)placeholder
{
    _placeholder = placeholder;
    _placeholderLabel = [[UILabel alloc] init];
    [self addSubview:_placeholderLabel];
    [_placeholderLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self);
        make.left.equalTo(self).offset(4);
    }];
    _placeholderLabel.text = _placeholder;
    _placeholderLabel.textColor = TextFieldPlaceholdrColor;
    _placeholderLabel.font = [UIFont systemFontOfSize:15];
}

- (void)custtomSubViws
{
    @weakify(self);
    [[self rac_textSignal] subscribeNext:^(NSString * _Nullable x) {
        @strongify(self);
        self.placeholderLabel.hidden = x.length;
    }];
    [RACObserve(self, text) subscribeNext:^(NSString *  _Nullable x) {
        @strongify(self);
        self.placeholderLabel.hidden = x.length;
    }];
    self.textContainerInset = UIEdgeInsetsMake(0, 0, 0, 0);
}

@end
