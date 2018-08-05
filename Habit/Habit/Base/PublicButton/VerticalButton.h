//
//  VerticalButton.h
//  Farm
//
//  Created by HENAN on 2018/8/2.
//  Copyright © 2018年 liyangshuai. All rights reserved.
//

#import "BaseButton.h"

@interface VerticalButton : UIView
/// 使用的组件
@property (nonatomic,strong) UIImageView *imageView;
@property (nonatomic,strong) UILabel *titleLabel;

/// 图片大小
@property (nonatomic,assign) CGSize imageSize;
/// 图片和文字的间距
@property (nonatomic,assign) CGFloat spacing;

/// 初始化方法
- (instancetype)initWithFrame:(CGRect)frame
                        image:(UIImage *)image
                        title:(NSString *)title
                      spacing:(CGFloat)spacing;
@end
