//
//  SlideMenu.m
//  Farm
//
//  Created by HENAN on 2018/7/24.
//  Copyright © 2018年 liyangshuai. All rights reserved.
//

#import "SlideMenu.h"

@interface SlideMenu ()
@property (nonatomic,strong) UIScrollView *scrollView;
@property (nonatomic,assign) NSInteger num;
@property (nonatomic,strong) NSArray<NSString *> *titles;
@property (nonatomic,strong) UIView *bottomLine;
@property (nonatomic,strong) NSMutableArray<BaseButton *> *btns;
@property (nonatomic,assign) NSInteger currentIndex;
@property (nonatomic,assign) NSInteger selectIndex;
@end

@implementation SlideMenu

- (instancetype)initWithFrame:(CGRect)frame titles:(NSArray<NSString *> *)titles num:(NSInteger)num currnetIndex:(NSInteger)currentIndex
{
    self = [super initWithFrame:frame];
    if (self) {
        self.titles = titles;
        self.num = num;
        self.currentIndex = currentIndex;
        [self customSubViews];
    }
    return self;
}

- (void)customSubViews
{
    self.scrollView = [[UIScrollView alloc] initWithFrame:self.bounds];
    [self addSubview:self.scrollView];
    
    CGFloat width = self.ly_width / self.num;
    CGFloat height = self.ly_height;
    
    self.btns = [NSMutableArray array];
    
    for (int i = 0; i < [self.titles count]; i++) {
        BaseButton *label = [[BaseButton alloc] initWithFrame:Rect(width * i, 0, width, height)];
        [label setTitle:[self.titles objectAtIndex:i] forState:(UIControlStateNormal)];
        [label setTitleColor:FontColor forState:(UIControlStateNormal)];
        label.titleLabel.textAlignment = NSTextAlignmentCenter;
        label.titleLabel.font = [UIFont systemFontOfSize:15];
        [self.scrollView addSubview:label];
        [self.btns addObject:label];
        
        [label addTarget:self action:@selector(clickAction:) forControlEvents:(UIControlEventTouchUpInside)];
    }
    
    if ([self.titles count] <= self.num) {
        [self.scrollView setContentSize:CGSizeMake(KScreenWidth, self.ly_height)];
    } else {
        [self.scrollView setContentSize:CGSizeMake([self.btns lastObject].ly_right, self.ly_height)];
    }
    
    
    self.bottomLine = [[UIView alloc] initWithFrame:Rect(0, self.ly_height-2, width * 0.9, 2)];
    self.bottomLine.backgroundColor = MainColor;
    [self addSubview:self.bottomLine];
    
    self.bottomLine.ly_centerX = [self.btns objectAtIndex:self.currentIndex].ly_centerX;
    
    self.selectIndex = self.currentIndex;
    
    [self addBorderLineWithColor:BorderColor lineWidth:0.5 type:(BorderLineTypeBottom)];
}

- (void)clickAction:(BaseButton *)sender
{
    NSInteger index = [self.btns indexOfObject:sender];
    if (index == self.currentIndex) {
        return;
    }
    
    self.currentIndex = index;
    
    [UIView animateWithDuration:0.3 animations:^{
        self.bottomLine.ly_centerX = sender.ly_centerX;
    }];
    if (self.clickIndex) {
        self.clickIndex(self.currentIndex);
    }
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
