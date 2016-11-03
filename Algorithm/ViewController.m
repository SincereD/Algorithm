//
//  ViewController.m
//  Algorithm
//
//  Created by Sincere on 16/11/2.
//  Copyright © 2016年 DY Tech. All rights reserved.
//

#import "ViewController.h"

#import "QuickSort.h"

#import "HeapSort.h"

#import "SortView.h"

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
        
        CGFloat number = arc4random()%100 + 10;
        
        NSNumber * numberObj = [NSNumber numberWithFloat:number];
        
        [_numberArr addObject:numberObj];
        
    }
    
    NSInteger i = 0;
    
    NSInteger j = _numberArr.count - 1;
    
    NSLog(@"=== 排序前 ===");
    
    NSLog(@"%@",_numberArr);
    
    SortView * sortView = [[SortView alloc] initWithArray:_numberArr];
    
    [self.view addSubview:sortView];
    
    [sortView setCenter:self.view.center];

//    HeapSort * quickSort = [[HeapSort alloc] init];
    
    
    QuickSort * quickSort = [[QuickSort alloc] init];
//
    [quickSort quickSortDataSource:_numberArr left:i right:j];
    
//    [quickSort heapSort:_numberArr];
    
    
    [sortView starAnimationWithArray:quickSort.sortRecord];
    
    NSLog(@"=== 排序后 ===");
    
    NSLog(@"%@",_numberArr);
    
    NSLog(@"=== 执行换位次数：%d ===",(int)quickSort.sortRecord.count );
    
    NSLog(@"%@",quickSort.sortRecord);
    
}

@end
