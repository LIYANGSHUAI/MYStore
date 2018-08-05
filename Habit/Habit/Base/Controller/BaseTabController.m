//
//  BaseTabController.m
//  Farm
//
//  Created by HENAN on 2018/8/2.
//  Copyright © 2018年 liyangshuai. All rights reserved.
//

#import "BaseTabController.h"

@interface BaseTabController ()

@end

@implementation BaseTabController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)updateParmas
{
    for (int i = 0; i < [self.rootVCArr count]; i++) {
        UIViewController *vc = [self.rootVCArr objectAtIndex:i];
        vc.tabBarItem.title = [self.titleArr objectAtIndex:i];
        vc.tabBarItem.image = [UIImage imageNamed:[self.defaultImgArr objectAtIndex:i]];
        vc.tabBarItem.selectedImage = [UIImage imageNamed:[self.selectImgArr objectAtIndex:i]];
    }
    self.viewControllers = self.rootVCArr;
    self.tabBar.tintColor = self.tintColor;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
