//
//  MainViewController.h
//  Farm
//
//  Created by HENAN on 2018/7/19.
//  Copyright © 2018年 liyangshuai. All rights reserved.
//

#import "BaseViewController.h"

@interface MainViewController : BaseViewController

@property (nonatomic,strong) BaseTabController *tabbarVC;
@property (nonatomic,strong) BaseNavController *loginRouteVC;

/// 入口
+ (instancetype)main;

- (void)toMain;
- (void)toLogin;
@end
