//
//  MMBottomView.m
//  shczLottery
//
//  Created by 刘春牢 on 16/5/25.
//  Copyright © 2016年 liuchunlao. All rights reserved.
//

#import "MMBottomView.h"
#import "MMBottomButton.h"

@interface MMBottomView ()

/** 保存选中的按钮 */
@property (nonatomic, weak) MMBottomButton *selectBtn;

@end


@implementation MMBottomView

#pragma mark - 创建按钮，设置图片，添加到自己身上
- (void)addButtonWithNormalImg:(UIImage *)normalImg andSelectImg:(UIImage *)selectImg {

    // MARK: - 1.添加按钮
    // 1.创建按钮
    MMBottomButton *btn = [MMBottomButton buttonWithType:UIButtonTypeCustom];
    
    // 2.设置按钮的背景图片
    [btn setBackgroundImage:normalImg forState:UIControlStateNormal];
    [btn setBackgroundImage:selectImg forState:UIControlStateSelected];
    
    // 3.添加按钮
    [self addSubview:btn];
    
    // MARK: - 2.监听按钮点击事件
    [btn addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
}

#pragma mark - 当点击底部工具条上的按钮时调用
- (void)btnClick:(MMBottomButton *)sender {

    // MARK: - 1.修改按钮的状态
    // 1.将之前选中的恢复
    self.selectBtn.selected = NO;
    
    // 2.将现在点击的选中
    sender.selected = YES;
    
    // 3.将现在选中的按钮存起来
    self.selectBtn = sender;
    
    // MARK: - 2.切换标签控制器的子控制器
    // 通过代理，让标签控制器切换自己的选中索引，达到切换控制器的目的
    // MARK: - 3.判断并让代理对象执行协议方法
    if ([self.delegate respondsToSelector:@selector(bottomView:didSelectIndex:)]) {
        
        // indexOfObject: 方法的作用-> 返回某个元素在数组中的索引
        [self.delegate bottomView:self didSelectIndex:[self.subviews indexOfObject:sender]];
    }

    
    
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
    [self.subviews enumerateObjectsUsingBlock:^(__kindof MMBottomButton * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        
        CGFloat btnX = idx * btnW;
        obj.frame = CGRectMake(btnX, btnY, btnW, btnH);
        
        // MARK:- 2.设置启动完毕后的第一个选中按钮
        if (idx == 0) {
            [self btnClick:obj];
        }
        
    }];
    
    
}




@end
