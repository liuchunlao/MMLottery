//
//  MMLuckyNumberController.m
//  shczLottery
//
//  Created by 刘春牢 on 16/5/27.
//  Copyright © 2016年 liuchunlao. All rights reserved.
//

#import "MMLuckyNumberController.h"

@interface MMLuckyNumberController ()

/** 显示彩灯效果的图片框 */
@property (nonatomic, weak) IBOutlet UIImageView *lightImgView;

@end

@implementation MMLuckyNumberController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    // MARK: - 1.彩灯的效果
    // 1.设置动画图片
    self.lightImgView.animationImages = @[
                                          [UIImage imageNamed:@"lucky_entry_light0"],
                                          [UIImage imageNamed:@"lucky_entry_light1"]
                                          ];
    
    // 2.动画的时间
    self.lightImgView.animationDuration = 1;
    
    
    // 3.开始动画
    [self.lightImgView startAnimating];
    
    
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
