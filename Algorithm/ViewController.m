//
//  ViewController.m
//  Algorithm
//
//  Created by Sincere on 16/11/2.
//  Copyright © 2016年 DY Tech. All rights reserved.
//

#import "ViewController.h"

@interface ViewController (){
    
    NSMutableArray * _numberArr;
    
    CGFloat key;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _numberArr = [NSMutableArray arrayWithCapacity:10];
    
    for (int i = 0; i<10; i++) {
        
        CGFloat number = arc4random()%100;
        
        NSNumber * numberObj = [NSNumber numberWithFloat:number];
        
        [_numberArr addObject:numberObj];
        
    }
    
    NSInteger i = 0;
    
    NSInteger j = _numberArr.count - 1;
    
    NSLog(@"=== 排序前 ===");
    
    NSLog(@"%@",_numberArr);
    
    [self fastIndexI:i indexJ:j];
    
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1.0 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
      
        NSLog(@"=== 排序后 ===");
        
        NSLog(@"%@",_numberArr);
        
    });
}


/**
 快速排序

 @param i I
 @param j J
 */
- (void)fastIndexI:(NSInteger)i indexJ:(NSInteger)j{
    
    NSInteger left = i;
    
    NSInteger right = j;
    
    if (i >= j) {

        return;
    }
    
    key = [_numberArr[i] floatValue];
    
    while (i < j) {
        
        while (i < j && key <= [_numberArr[j] floatValue])
        {
            
            j --;

        }
        
        [_numberArr exchangeObjectAtIndex:i withObjectAtIndex:j];
    
        while (i < j && key >= [_numberArr[i] floatValue]) {
            
            i ++;
        
        }
        
        [_numberArr exchangeObjectAtIndex:i withObjectAtIndex:j];
        
    }
    
    key = [_numberArr[i] floatValue];
    
    [self fastIndexI:left indexJ:i-1];
    
    [self fastIndexI:i+1 indexJ:right];
    
}

@end
