//
//  MMGroupBuyButton.m
//  shczLottery
//
//  Created by 刘春牢 on 16/5/27.
//  Copyright © 2016年 liuchunlao. All rights reserved.
//

#import "MMGroupBuyButton.h"

@implementation MMGroupBuyButton

#pragma mark - 重写此方法，调整按钮内部子控件的位置
- (void)layoutSubviews {

    [super layoutSubviews];
    
    // 调整按钮内部图片和文字的位置
    self.titleLabel.x = 0;
    self.imageView.x = self.titleLabel.width + 5;
    
}

@end
