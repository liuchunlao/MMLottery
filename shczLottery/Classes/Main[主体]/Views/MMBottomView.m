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
    
    // MARK: - 1.遍历所有的子控件，并且进行布局
    // 1.将最容易确定的内容，放置在循环外面计算
    CGFloat btnW = self.bounds.size.width / self.subviews.count;
    CGFloat btnH = self.bounds.size.height;
    
    CGFloat btnY = 0;
    
    // 2.遍历，计算x值
    [self.subviews enumerateObjectsUsingBlock:^(__kindof UIButton * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        
        CGFloat btnX = idx * btnW;
        obj.frame = CGRectMake(btnX, btnY, btnW, btnH);
        
    }];
    
    
}




@end
