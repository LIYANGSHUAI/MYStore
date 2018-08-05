//
//  SlideMenu.h
//  Farm
//
//  Created by HENAN on 2018/7/24.
//  Copyright © 2018年 liyangshuai. All rights reserved.
//

#import "BaseView.h"

@interface SlideMenu : BaseView
- (instancetype)initWithFrame:(CGRect)frame titles:(NSArray<NSString *> *)titles num:(NSInteger)num currnetIndex:(NSInteger)currentIndex;
@property (nonatomic,copy) void(^clickIndex)(NSInteger index);
@end
