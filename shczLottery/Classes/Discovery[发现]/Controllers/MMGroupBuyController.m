//
//  MMGroupBuyController.m
//  shczLottery
//
//  Created by 刘春牢 on 16/5/27.
//  Copyright © 2016年 liuchunlao. All rights reserved.
//

#import "MMGroupBuyController.h"
#import "MMGroupBuyButton.h"

@interface MMGroupBuyController ()

/** 显示下拉菜单效果的蓝色视图 */
@property (nonatomic, weak) UIView *blueView;

@end

@implementation MMGroupBuyController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // MARK: - 1蓝色的视图
    UIView *blueV = [[UIView alloc] init];
    
    blueV.backgroundColor = [UIColor blueColor];
    
    blueV.x = 0;
    blueV.y = 64;
    blueV.width = self.view.width;
    blueV.height = 0;
    
    [self.view addSubview:blueV];
    
    // 赋值
    _blueView = blueV;
}

#pragma mark - 监听顶部按钮的点击事件
- (IBAction)groupBuyButtonClick:(MMGroupBuyButton *)sender {

    // MARK: - 目标：显示或隐藏蓝色的视图&按钮的图片框进行旋转
    // 1.判断 -> 根据蓝色视图的高度进行判断
    CGFloat height = 0;
    CGAffineTransform transform;
    
    if (self.blueView.height == 0) {
        height = 200;
        transform = CGAffineTransformMakeRotation(M_PI);
    } else {
        
        height = 0;
        transform = CGAffineTransformIdentity;
    }
    
    // 2.通过动画的方式进行展示
    [UIView animateWithDuration:0.5 animations:^{
        
        self.blueView.height = height;
        sender.imageView.transform = transform;
    }];
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
