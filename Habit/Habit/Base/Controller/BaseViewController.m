//
//  BaseViewController.m
//  Farm
//
//  Created by HENAN on 2018/8/2.
//  Copyright © 2018年 liyangshuai. All rights reserved.
//

#import "BaseViewController.h"

@interface BaseViewController ()

@end

@implementation BaseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    [self customBackBarItem];
}

#pragma mark - 设置导航返回按钮 -
- (void)customBackBarItem
{
    if (self.navigationController && ![self isEqual:[self.navigationController.viewControllers firstObject]])
    {
        UIBarButtonItem *backItem = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"fanhui01"] style:(UIBarButtonItemStyleDone) target:self action:@selector(backItemAction:)];
        backItem.tintColor = [UIColor blackColor];
        self.navigationItem.leftBarButtonItem = backItem;
    }
}
- (void)backItemAction:(UIBarButtonItem *)sender
{
    [self.navigationController popViewControllerAnimated:YES];
}

@end
