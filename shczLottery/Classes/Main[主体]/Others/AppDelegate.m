//
//  AppDelegate.m
//  shczLottery
//
//  Created by 刘春牢 on 16/5/25.
//  Copyright © 2016年 liuchunlao. All rights reserved.
//

#import "AppDelegate.h"
#import "MMTabBarController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    // MARK: - 1.加载自定义控制器
    // 1.创建窗口
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    
    // 2.1 创建标签控制器
    MMTabBarController *tabBarVc = [[MMTabBarController alloc] init];
    
    // 3.将标签vc设置为窗口的子控制器
    self.window.rootViewController = tabBarVc;
    
    // 4.将窗口设置为主窗口并可见
    [self.window makeKeyAndVisible];
    
    
    // MARK: - 2.设置状态栏的显示效果
    // 1.显示白色效果
    application.statusBarStyle = UIStatusBarStyleLightContent;
    // 2.不要隐藏！
    application.statusBarHidden = NO;
    
    
    
    return YES;
}



- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
