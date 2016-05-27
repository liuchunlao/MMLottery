//
//  MMMyLotteryController.m
//  shczLottery
//
//  Created by 刘春牢 on 16/5/27.
//  Copyright © 2016年 liuchunlao. All rights reserved.
//

#import "MMMyLotteryController.h"
#import "MMSettingHomeController.h"

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

#pragma mark - 点击右侧的configItem的时候调用
- (IBAction)go2SettingVc:(id)sender {

    // MARK: - 1.跳转到设置控制器
    // 1.创建对象
    MMSettingHomeController *settingHomeVc = [[MMSettingHomeController alloc] init];
    
    // 1.2 设置标题
    settingHomeVc.navigationItem.title = @"设置";
    
    // 1.3 设置要加载的plist文件名称
    settingHomeVc.plistName = @"MMSettingHome";
    
    // 2.跳转
    [self.navigationController pushViewController:settingHomeVc animated:YES];
}

@end
