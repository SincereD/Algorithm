//
//  QuickSort.h
//  Algorithm
//
//  Created by Sincere on 16/11/3.
//  Copyright © 2016年 DY Tech. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "CommonSort.h"

/**
 快速排序
 */
@interface QuickSort : CommonSort

/**
 快速排序

 @param dataSource 数据源
 @param left       左侧起点
 @param right      右侧起点
 */
- (void)quickSortDataSource:(NSMutableArray*)dataSource
                       left:(NSInteger)left
                      right:(NSInteger)right;

@end
