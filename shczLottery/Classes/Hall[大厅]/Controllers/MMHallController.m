//
//  MMHallController.m
//  shczLottery
//
//  Created by 刘春牢 on 16/5/25.
//  Copyright © 2016年 liuchunlao. All rights reserved.
//  购彩大厅控制器

#import "MMHallController.h"

@interface MMHallController ()

/** 遮盖 */
@property (nonatomic, weak) UIView *cover;

/** 广告图片框 */
@property (nonatomic, weak) UIImageView *adImgView;

@end

@implementation MMHallController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}


#pragma mark - 活动按钮的点击事件
// MARK: - 需要注意的点
/**
 1.添加位置的选择，需要清楚视图的层次结构
 2.父控件有透明度，子控件也会被透明化
 3.图片框默认是不接受用户交互的，需要将用户交互打开
 */
- (IBAction)activityBtnClick {

    // MARK: - 1.遮盖
    // 1.创建view
    UIView *cover = [[UIView alloc] initWithFrame:self.view.bounds];
    
    // 2.设置背景
    cover.backgroundColor = [UIColor magentaColor];
    // 3.修改透明度
    cover.alpha = 0.3;
    
    // 4.添加
    [self.tabBarController.view addSubview:cover];
    
    // 5.赋值
    _cover = cover;
    
    
    // MAKR: - 2.广告图片框
    // 1.创建图片框
    UIImageView *adImgView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"showActivity"]];
    
    // 1.2 图片框默认不接受用户交互的
    adImgView.userInteractionEnabled = YES;
    
    // 2.设置位置
    adImgView.center = self.tabBarController.view.center;
    
    // 2.添加
    [self.tabBarController.view addSubview:adImgView];
    
    // 3.赋值
    _adImgView = adImgView;
    
    
    // MARK: - 3.关闭按钮
    // 1.创建
    UIButton *closeBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    
    // 2.设置图片
    [closeBtn setImage:[UIImage imageNamed:@"alphaClose"] forState:UIControlStateNormal];
    
    // 3.大小和位置
    [closeBtn sizeToFit];
    closeBtn.x = adImgView.width - closeBtn.width;
    
    // 4.添加
    [adImgView addSubview:closeBtn];
    
    // 5.监听点击事件
    [closeBtn addTarget:self action:@selector(closeBtnClick) forControlEvents:UIControlEventTouchUpInside];


}

#pragma mark - 点击关闭按钮时调用
- (void)closeBtnClick {

    [UIView animateWithDuration:0.5 animations:^{
       
        self.cover.alpha = 0.0;
        self.adImgView.alpha = 0.0;
        
    } completion:^(BOOL finished) {
        
        [self.cover removeFromSuperview];
        [self.adImgView removeFromSuperview];
    }];
    
    
}


@end
