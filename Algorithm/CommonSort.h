//
//  CommonSort.h
//  Algorithm
//
//  Created by Sincere on 16/11/3.
//  Copyright © 2016年 DY Tech. All rights reserved.
//

#import <Foundation/Foundation.h>

#define DataCount 10

#define DataRange 100

@interface CommonSort : NSObject

@property (nonatomic,retain) NSMutableArray * sortRecord;

- (NSMutableArray*)getRandomDataSource;

- (NSDictionary*)getRemoveRecordWithI:(NSInteger)i J:(NSInteger)j;

@end
