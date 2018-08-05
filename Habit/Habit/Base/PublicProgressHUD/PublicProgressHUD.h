//
//  PublicProgressHUD.h
//  Farm
//
//  Created by HENAN on 2018/8/2.
//  Copyright © 2018年 liyangshuai. All rights reserved.
//

#import "MBProgressHUD.h"

// 提示窗在屏幕上显示的位置
#define FarmProgressHUDPositionCenter 0
#define FarmProgressHUDPositionBottom CGRectGetHeight([UIScreen mainScreen].bounds) * 0.25

@interface PublicProgressHUD : MBProgressHUD

/// 弹出带文字提示的加载圈
- (void)alertProgressHUD:(NSString *)message positionY:(CGFloat)positionY;
/// 弹出文字提示窗
- (void)alertTextHUD:(NSString *)message positionY:(CGFloat)positionY;
/// 隐藏提示窗口
- (void)hiddenHUD;

/// 弹出带文字提示的加载圈
+ (void)alertProgressHUD:(NSString *)message positionY:(CGFloat)positionY;
/// 弹出文字提示窗
+ (void)alertTextHUD:(NSString *)message positionY:(CGFloat)positionY;
/// 隐藏提示窗口
+ (void)hiddenHUD;

@end
