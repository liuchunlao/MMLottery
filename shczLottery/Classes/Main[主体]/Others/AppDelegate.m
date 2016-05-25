//
//  AppDelegate.m
//  shczLottery
//
//  Created by 刘春牢 on 16/5/25.
//  Copyright © 2016年 liuchunlao. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    // MARK: - 1.加载自定义控制器
    // 1.创建窗口
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    
    // 2.1 创建标签控制器
    UITabBarController *tabBarVc = [[UITabBarController alloc] init];
    
    // 2.2 加载标签控制器的子控制器
    // 大厅
    // 加载文件
    UIStoryboard *hallBoard = [UIStoryboard storyboardWithName:@"MMHall" bundle:nil];
    // 实例化控制器
    UINavigationController *navHall = [hallBoard instantiateInitialViewController];
    
    // 竞技场
    // 加载文件
    UIStoryboard *arenaBoard = [UIStoryboard storyboardWithName:@"MMArena" bundle:nil];
    // 实例化控制器
    UINavigationController *navArena = [arenaBoard instantiateInitialViewController];
    
    // 发现
    UIStoryboard *discoveryBoard = [UIStoryboard storyboardWithName:@"MMDiscovery" bundle:nil];
    UINavigationController *navDiscovery = [discoveryBoard instantiateInitialViewController];
    
    // 历史信息
    UIStoryboard *historyBoard = [UIStoryboard storyboardWithName:@"MMHistory" bundle:nil];
    UINavigationController *navHistory = [historyBoard instantiateInitialViewController];
    
    // 我的彩票
    UIStoryboard *myLotteryBoard = [UIStoryboard storyboardWithName:@"MMMyLottery" bundle:nil];
    UINavigationController *navMyLottery = [myLotteryBoard instantiateInitialViewController];
    
    tabBarVc.viewControllers = @[navHall, navArena, navDiscovery, navHistory, navMyLottery];
    
    // 3.将标签vc设置为窗口的子控制器
    self.window.rootViewController = tabBarVc;
    
    // 4.将窗口设置为主窗口并可见
    [self.window makeKeyAndVisible];
    
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
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
