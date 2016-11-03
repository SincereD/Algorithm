//
//  CommonSort.m
//  Algorithm
//
//  Created by Sincere on 16/11/3.
//  Copyright © 2016年 DY Tech. All rights reserved.
//

#import "CommonSort.h"

@implementation CommonSort

- (instancetype)init{
    if (self = [super init]) {
        
        _sortRecord = [NSMutableArray array];
    }
    
    return self;
}

- (NSMutableArray*)getRandomDataSource{
    
    NSMutableArray * numArr = [NSMutableArray arrayWithCapacity:DataCount];
    
    for (int i = 0; i< DataCount; i++) {
        
        float number = arc4random()%DataRange + 10;
        
        NSNumber * numberObj = [NSNumber numberWithFloat:number];
        
        [numArr addObject:numberObj];
        
    }
    
    return numArr;
}

- (NSDictionary*)getRemoveRecordWithI:(NSInteger)i J:(NSInteger)j{
    
    NSNumber * fromNum = [NSNumber numberWithInteger:i];
    
    NSNumber * toNum = [NSNumber numberWithInteger:j];
    
    return @{@"from":fromNum,@"to":toNum};
}



@end
