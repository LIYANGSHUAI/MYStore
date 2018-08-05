//
//  Header.h
//  Habit
//
//  Created by liyangshuai on 2018/8/5.
//  Copyright © 2018年 liyangshuai. All rights reserved.
//

#ifndef Header_h
#define Header_h

#define KScreenHeight CGRectGetHeight([UIScreen mainScreen].bounds)
#define KScreenWidth CGRectGetWidth([UIScreen mainScreen].bounds)

#define Image(A) [UIImage imageNamed:A]
#define Rect(x,y,w,h) CGRectMake(x, y, w, h)

#define ISIPhoneX (CGSizeEqualToSize(CGSizeMake(375.f, 812.f), [UIScreen mainScreen].bounds.size) || CGSizeEqualToSize(CGSizeMake(812.f, 375.f), [UIScreen mainScreen].bounds.size))

#define TextFieldPlaceholdrColor [UIColor grayColor]
#define FontColor LYSHEX(@"#555555")
#define BorderColor LYSHEX(@"#dddddd")
#define MainColor LYSHEX(@"#C5AE7D")
#define DesColor LYSHEX(@"#C7C7CD")

#define NAVHEIGHT (ISIPhoneX ? 88 : 64)
#define TABBARHEIGHT (ISIPhoneX ? 83 : 49)
#endif /* Header_h */
