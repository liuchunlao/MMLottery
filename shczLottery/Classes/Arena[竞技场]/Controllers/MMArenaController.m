//
//  MMArenaController.m
//  shczLottery
//
//  Created by 刘春牢 on 16/5/27.
//  Copyright © 2016年 liuchunlao. All rights reserved.
//

#import "MMArenaController.h"

@interface MMArenaController ()

/** 标题的视图 */
@property (nonatomic, weak) IBOutlet UISegmentedControl *segment;

@end

@implementation MMArenaController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // MARK: - 1.设置控制器背景
    self.view.layer.contents = (__bridge id)[UIImage imageNamed:@"NLArenaBackground"].CGImage;
    
    // MARK: - 2.设置导航栏背景
    [self.navigationController.navigationBar setBackgroundImage:[UIImage imageNamed:@"NLArenaNavBar64"] forBarMetrics:UIBarMetricsDefault];
    
    // MARK: - 3.设置标题显示效果
    // 3.1 文字颜色
    NSDictionary *dict = @{
                           NSForegroundColorAttributeName : [UIColor whiteColor]
                           };
    
    [self.segment setTitleTextAttributes:dict forState:UIControlStateNormal];
    [self.segment setTitleTextAttributes:dict forState:UIControlStateSelected];
    
    // 3.2 背景图片
    [self.segment setBackgroundImage:[UIImage imageNamed:@"CPArenaSegmentBG"] forState:UIControlStateNormal barMetrics:UIBarMetricsDefault];
    
    [self.segment setBackgroundImage:[UIImage imageNamed:@"CPArenaSegmentSelectedBG"] forState:UIControlStateSelected barMetrics:UIBarMetricsDefault];
    
    // 3.3 去掉中间的蓝线
    [self.segment setTintColor:[UIColor clearColor]];
    
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
