//
//  CommonSort.h
//  Algorithm
//
//  Created by Sincere on 16/11/3.
//  Copyright © 2016年 DY Tech. All rights reserved.
//

#import <Foundation/Foundation.h>

//随机数个数
#define DataCount 10

//随机数范围
#define DataRange 100

/**
 排序基类
 */
@interface CommonSort : NSObject


/**
 操作记录
 */
@property (nonatomic,retain) NSMutableArray * sortRecord;


/**
 生成随机数据源

 @return NSMutableArray
 */
- (NSMutableArray*)getRandomDataSource;


/**
 保存每次执行排序操作的过程，用于执行动画、
 这里的无所谓From 和 To，最终结果都是交换值，视图x轴位置切换

 @param i from
 @param j to

 @return NSDictionary
 */
- (NSDictionary*)getRemoveRecordWithI:(NSInteger)i J:(NSInteger)j;

@end
