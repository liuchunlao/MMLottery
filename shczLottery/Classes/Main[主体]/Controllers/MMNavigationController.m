//
//  MMNavigationController.m
//  shczLottery
//
//  Created by 刘春牢 on 16/5/25.
//  Copyright © 2016年 liuchunlao. All rights reserved.
//

#import "MMNavigationController.h"

@interface MMNavigationController ()

@end

@implementation MMNavigationController

#pragma mark - 系统在第一次初始化这个类的时候，调用一次，以后都不会调用了
+ (void)initialize {

    MMLog(@"initialize方法被调用了！");
    
    // MARK: - 1.通过appearance方法获取导航条的外观代理对象，然后进行设置
    /**
     外观代理对象的作用：只要设置了外观，如果不再进行修改，将来所有这种类型的控件对象，显示出来的效果都是一样的！
     */
    // 1.获取外观代理对象
    UINavigationBar *navBar = [UINavigationBar appearance];

    // 2.设置导航栏红色背景图
    [navBar setBackgroundImage:[UIImage imageNamed:@"NavBar64"] forBarMetrics:UIBarMetricsDefault];
    
    // 3.设置导航啦标题的显示效果
    [navBar setTitleTextAttributes:@{
                                     NSForegroundColorAttributeName : [UIColor whiteColor]
                                     }];
    
    // 4.设置两侧item的显示效果
    [navBar setTintColor:[UIColor whiteColor]];
}


- (void)viewDidLoad {
    [super viewDidLoad];
    
    // MARK: - 1.统一设置导航栏的背景
    // metricsDefault代表在任何情况下都显示红色的背景图
    // 分为横屏，竖屏及导航栏有prompt标题等几种场景！
    
    /**
     ps: 直接写在这里，没有问题，可以实现给导航栏都设置红色背景，只不过就是第一次切换其他子控制器的时候，都会创建导航控制器对象，然后分别走一次viewDidLoad方法，也就说会调用5次设置背景图片的操作！
     
     优化: 任何一个类里面都有一个intialize类方法！是在系统初始化此类的时候调用的方法!并且只调用一次！
     */
    MMLog(@"导航控制器视图加载完成");
//    [self.navigationBar setBackgroundImage:[UIImage imageNamed:@"NavBar64"] forBarMetrics:UIBarMetricsDefault];
    
}

#pragma mark - 重写此方法拦截系统默认的push操作
/**
 统一设置底部工具条在push的时候隐藏起来！
 */
- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated {

    /**
     判断的原因：
        - 在storyboard拖线设置根控制器的时候，第一次显示不会调用push方法
        - 在纯代码创建控制器时，alloc + initWithRootViewController: 会调用一次这个方法！
     */
    if (self.viewControllers.count > 0) {
        viewController.hidesBottomBarWhenPushed = YES;
    }
    
    // 系统的push操作照做
    [super pushViewController:viewController animated:animated];
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
