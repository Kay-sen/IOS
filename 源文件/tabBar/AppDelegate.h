//
//  AppDelegate.h
//  tabBar
//
//  Created by D04 on 2019/4/23.
//  Copyright © 2019年 D04. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

/** 横竖屏 */
@property (nonatomic, assign) UIInterfaceOrientationMask orientationMask;

@end

