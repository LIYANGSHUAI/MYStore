//
//  HorizontalButton.m
//  Farm
//
//  Created by HENAN on 2018/8/2.
//  Copyright © 2018年 liyangshuai. All rights reserved.
//

#import "HorizontalButton.h"

@interface HorizontalButton ()
@property (nonatomic,copy) NSString *title;
@property (nonatomic,strong) UIImage *image;
@end

@implementation HorizontalButton

- (instancetype)initWithFrame:(CGRect)frame
                        image:(UIImage *)image
                        title:(NSString *)title
                      spacing:(CGFloat)spacing
{
    if (self = [super initWithFrame:frame]) {
        self.title = title;
        self.image = image;
        self.spacing = spacing;
    }
    return self;
}

- (void)didMoveToSuperview
{
    [super didMoveToSuperview];
    if (self.superview) {
        [self customSubViews];
    }
}

- (UIImageView *)imageView
{
    if (!_imageView) {
        _imageView = [[UIImageView alloc] init];
    }
    return _imageView;
}

- (UILabel *)titleLabel
{
    if (!_titleLabel) {
        _titleLabel = [[UILabel alloc] init];
        _titleLabel.textColor = FontColor;
    }
    return _titleLabel;
}

- (void)customSubViews
{
    [self addSubview:self.imageView];
    [self addSubview:self.titleLabel];
    
    self.imageView.image = self.image;
    self.titleLabel.text = self.title;
    [self.titleLabel sizeToFit];
    
    if (CGSizeEqualToSize(CGSizeZero, self.imageSize)) {
        [self.imageView sizeToFit];
    } else {
        self.imageView.ly_size = self.imageSize;
    }
    
    self.imageView.ly_centerY = self.ly_interiorCenterY;
    self.titleLabel.ly_centerY = self.ly_interiorCenterY;
    
    CGFloat margin = (self.ly_width - self.spacing - self.imageView.ly_width - self.titleLabel.ly_width) / 2.0;
    self.imageView.ly_left = margin;
    self.titleLabel.ly_right = self.ly_width - margin;
    
}

@end
