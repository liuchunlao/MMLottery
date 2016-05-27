//
//  MMMyLotteryController.m
//  shczLottery
//
//  Created by 刘春牢 on 16/5/27.
//  Copyright © 2016年 liuchunlao. All rights reserved.
//

#import "MMMyLotteryController.h"

@interface MMMyLotteryController ()

/** 登录的按钮 */
@property (nonatomic, weak) IBOutlet UIButton *loginBtn;

/** 注册的按钮 */
@property (nonatomic, weak) IBOutlet UIButton *registerBtn;

@end

@implementation MMMyLotteryController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // 普通及按下的图片
    UIImage *norImg = [self stretchImage:[UIImage imageNamed:@"RedButton"]];
    UIImage *highImg = [self stretchImage:[UIImage imageNamed:@"RedButtonPressed"]];
    
    [self.loginBtn setBackgroundImage:norImg forState:UIControlStateNormal];
    [self.loginBtn setBackgroundImage:highImg forState:UIControlStateHighlighted];
    
    [self.registerBtn setBackgroundImage:norImg forState:UIControlStateNormal];
    [self.registerBtn setBackgroundImage:highImg forState:UIControlStateSelected];
    
}

#pragma mark - 图片拉伸的方法
- (UIImage *)stretchImage:(UIImage *)originalImg {
    
    return [originalImg stretchableImageWithLeftCapWidth:originalImg.size.width * 0.5 topCapHeight:originalImg.size.height * 0.5];
}

@end
