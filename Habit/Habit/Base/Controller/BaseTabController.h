//
//  BaseTabController.h
//  Farm
//
//  Created by HENAN on 2018/8/2.
//  Copyright © 2018年 liyangshuai. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BaseTabController : UITabBarController
@property (nonatomic,strong) NSArray<UIViewController *> *rootVCArr;
@property (nonatomic,strong) NSArray<NSString *> *defaultImgArr;
@property (nonatomic,strong) NSArray<NSString *> *selectImgArr;
@property (nonatomic,copy) NSArray<NSString *> *titleArr;
@property (nonatomic,strong) UIColor *tintColor;

- (void)updateParmas;
@end
