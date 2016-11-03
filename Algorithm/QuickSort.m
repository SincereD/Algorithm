//
//  QuickSort.m
//  Algorithm
//
//  Created by Sincere on 16/11/3.
//  Copyright © 2016年 DY Tech. All rights reserved.
//

#import "QuickSort.h"

@implementation QuickSort

/*
 * 快排：
 * 选择一个参考元素
 * 小于该元素左移、大于该元素右移
 *
 */
- (void)quickSortDataSource:(NSMutableArray*)dataSource
                       left:(NSInteger)left
                      right:(NSInteger)right{
    
    NSInteger i = left;//起点
    
    NSInteger j = right;//终点
    
    if (i >= j) {
        
        return;//向内聚拢完成，则排序完成
    }
    
    float key = [dataSource[i] floatValue];//选取第i个元素作为参考元素
    
    while (i < j) {
        
        //从右侧开始找到第一个大于参考元素的值
        while (i < j && key <= [dataSource[j] floatValue]){
            
            j --;
        }
        
        //位置互换
        [dataSource exchangeObjectAtIndex:i withObjectAtIndex:j];
        
        [self.sortRecord addObject:[self getRemoveRecordWithI:i J:j]];
        
        //再从左侧开始找到第一个小于参考元素的值
        while (i < j && key >= [dataSource[i] floatValue]) {
            
            i ++;
        }
        
        //位置互换
        [dataSource exchangeObjectAtIndex:i withObjectAtIndex:j];
        
        [self.sortRecord addObject:[self getRemoveRecordWithI:j J:i]];
        
        /*
         * 上述的两次调整的结果：
         * （1）一个大于参考元素的值右移
         * （2）一个小于参考元素的值左移
         */
        
    }
    
    //移动完成之后，我们获取了一个新的参考值
    key = [dataSource[i] floatValue];
    
    //现在我们以这个新的参考值为基准，把数据源分成两段。
    
    //（左侧起点，i-1）继续进行循环排序
    [self quickSortDataSource:dataSource left:left right:i-1];
    
    //（i+1，右侧起点）继续进行循环排序
    [self quickSortDataSource:dataSource left:i+1 right:right];
    
    //最终，实现了较小的值左移，较大的值右移
    
}

@end
