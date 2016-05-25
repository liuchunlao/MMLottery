//
//  MMBottomView.h
//  shczLottery
//
//  Created by 刘春牢 on 16/5/25.
//  Copyright © 2016年 liuchunlao. All rights reserved.
//

#import <UIKit/UIKit.h>

// MARK: - 1.制定协议
@class MMBottomView;
@protocol MMBottomViewDelegate <NSObject>

@optional
- (void)bottomView:(MMBottomView *)bottomView didSelectIndex:(NSUInteger)selIdx;

@end


@interface MMBottomView : UIView

#pragma mark - 根据传入的两张图片，添加一个按钮
- (void)addButtonWithNormalImg:(UIImage *)normalImg andSelectImg:(UIImage *)selectImg;

// MARK: - 2.包含代理属性
@property (nonatomic, weak) id<MMBottomViewDelegate> delegate;

@end
