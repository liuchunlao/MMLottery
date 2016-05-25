//
//  MMTabBarController.m
//  shczLottery
//
//  Created by 刘春牢 on 16/5/25.
//  Copyright © 2016年 liuchunlao. All rights reserved.
//

#import "MMTabBarController.h"
#import "MMBottomView.h"

@interface MMTabBarController ()

@end

@implementation MMTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // MARK: - 1.添加子控制器
    [self setupChildVcs];
    
    // MARK: - 2.添加底部的工具条视图
    [self setupBottomView];
}

#pragma mark - 2.添加底部的工具条视图
- (void)setupBottomView {

    // MARK: - 1.创建并添加底部的工具条视图
    // 1.创建
    MMBottomView *bottomView = [[MMBottomView alloc] init];
    
    // 2.设置背景，验证
    bottomView.backgroundColor = MMRandomColor;
    // 3.设置尺寸位置信息
    bottomView.frame = self.tabBar.bounds;
    
    // 4.添加
    [self.tabBar addSubview:bottomView];
}

#pragma mark - 1.添加子控制器
- (void)setupChildVcs {

    // 2.2 加载标签控制器的子控制器
    // 大厅
    UINavigationController *navHall = [self navWithStoryboardName:@"MMHall"];
    
    // 竞技场
    UINavigationController *navArena = [self navWithStoryboardName:@"MMArena"];
    
    // 发现
    UINavigationController *navDiscovery = [self navWithStoryboardName:@"MMDiscovery"];
    
    // 历史信息
    UINavigationController *navHistory = [self navWithStoryboardName:@"MMHistory"];
    
    // 我的彩票
    UINavigationController *navMyLottery = [self navWithStoryboardName:@"MMMyLottery"];
    
    self.viewControllers = @[navHall, navArena, navDiscovery, navHistory, navMyLottery];
    
}

#pragma mark - 根据传入的故事板文件，创建并返回对应的导航控制器
- (UINavigationController *)navWithStoryboardName:(NSString *)storyboardName {
    
    // 1.根据名称加载故事板文件
    UIStoryboard *board = [UIStoryboard storyboardWithName:storyboardName bundle:nil];
    
    // 2.实例化文件中的初始化控制器【即带箭头的导航控制器】
    UINavigationController *nav = [board instantiateInitialViewController];
    
    // 2.2 设置随机色验证控制器的界面显示
    nav.topViewController.view.backgroundColor = MMRandomColor;
    
    // 3.返回
    return nav;
    
}


@end
