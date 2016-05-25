//
//  MMBottomView.h
//  shczLottery
//
//  Created by 刘春牢 on 16/5/25.
//  Copyright © 2016年 liuchunlao. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MMBottomView : UIView

#pragma mark - 根据传入的两张图片，添加一个按钮
- (void)addButtonWithNormalImg:(UIImage *)normalImg andSelectImg:(UIImage *)selectImg;

@end
