//
//  MainViewController.m
//  Farm
//
//  Created by HENAN on 2018/7/19.
//  Copyright © 2018年 liyangshuai. All rights reserved.
//

#import "MainViewController.h"

@interface MainViewController ()

@end

@implementation MainViewController

+ (instancetype)main
{
    static MainViewController *main = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        main = [[MainViewController alloc] init];
    });
    return main;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    if (self.tabbarVC) {
        [self addChildViewController:self.tabbarVC];
    }
    if (self.loginRouteVC) {
        [self addChildViewController:self.loginRouteVC];
    }
    if (self.tabbarVC && self.loginRouteVC) {
        [self.view addSubview:self.loginRouteVC.view];
    } else {
        if (self.tabbarVC) {
            [self.view addSubview:self.tabbarVC.view];
        }
        if (self.loginRouteVC) {
            [self.view addSubview:self.loginRouteVC.view];
        }
    }
}

- (void)toMain
{
    [self transitionFromViewController:self.loginRouteVC toViewController:self.tabbarVC duration:0.3 options:(UIViewAnimationOptionTransitionNone) animations:nil completion:nil];
}

- (void)toLogin
{
    [self transitionFromViewController:self.tabbarVC toViewController:self.loginRouteVC duration:0.3 options:(UIViewAnimationOptionTransitionNone) animations:nil completion:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
