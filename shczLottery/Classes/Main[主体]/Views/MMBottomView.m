//
//  MMBottomView.m
//  shczLottery
//
//  Created by 刘春牢 on 16/5/25.
//  Copyright © 2016年 liuchunlao. All rights reserved.
//

#import "MMBottomView.h"

@implementation MMBottomView

#pragma mark - 创建按钮，设置图片，添加到自己身上
- (void)addButtonWithNormalImg:(UIImage *)normalImg andSelectImg:(UIImage *)selectImg {

    // MARK: - 1.添加按钮
    // 1.创建按钮
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    
    // 2.设置按钮的背景图片
    [btn setBackgroundImage:normalImg forState:UIControlStateNormal];
    [btn setBackgroundImage:selectImg forState:UIControlStateSelected];
    
    // 3.添加按钮
    [self addSubview:btn];
}



#pragma mark - 重写layoutSubviews方法布局按钮
- (void)layoutSubviews {

    [super layoutSubviews];
    MMLog(@"%@", @(self.subviews.count));
    
    
}




@end
