//
//  SortView.h
//  Algorithm
//
//  Created by Sincere on 16/11/3.
//  Copyright © 2016年 DY Tech. All rights reserved.
//

#import <UIKit/UIKit.h>

/**
 排序视图
 */
@interface SortView : UIView


/**
 根据首次数据初始化

 @param numArr 随机数组

 @return instancetype
 */
- (instancetype)initWithArray:(NSArray*)numArr;


/**
 开始执行动画

 @param recordArr 操作记录
 */
- (void)starAnimationWithArray:(NSArray*)recordArr;

@end
