//
//  SortView.m
//  Algorithm
//
//  Created by Sincere on 16/11/3.
//  Copyright © 2016年 DY Tech. All rights reserved.
//

#import "SortView.h"

@implementation SortView

- (instancetype)initWithArray:(NSArray*)numArr{
    
    if (self = [super init]) {
                
        [self  initSelf];
        
        [self createUIViewWithData:numArr];
    }
    
    return self;
}

- (void)initSelf{
    
    [self setFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.width)];
    
    [self setBackgroundColor:[UIColor brownColor]];
}

- (void)createUIViewWithData:(NSArray*)data{
    
    for (int i = 0; i<data.count; i++) {
        
        NSNumber * number = data[i];
        
        UIView * view = [[UIView alloc] initWithFrame:CGRectMake(i * (20+10) + 10, CGRectGetHeight(self.frame) - [number floatValue]*2.5, 20, [number floatValue]*2.5)];
        
        [view setBackgroundColor:[UIColor blackColor]];
        
        [view setTag:i + 1000];
        
        [self addSubview:view];
    }
}

- (void)starAnimationWithArray:(NSArray*)recordArr{
    
    int index = 0;
    
    for (int i = 0; i < recordArr.count; i++) {
        
        NSDictionary * record = recordArr[i];
        
        NSInteger from = [[record objectForKey:@"from"] integerValue];
        
        NSInteger to = [[record objectForKey:@"to"] integerValue];
        
        if (from == to) {
            
            continue;
        }
        
        UIView * fromeView = [self viewWithTag:from+1000];
        
        UIView * toView = [self viewWithTag:to + 1000];
        
        [fromeView setTag:to + 1000];
        
        [toView setTag:from + 1000];
        
        CGPoint tempCenter = fromeView.center;
        
        [UIView animateKeyframesWithDuration:0.5 delay:index options:UIViewKeyframeAnimationOptionLayoutSubviews animations:^{
            
            fromeView.center = CGPointMake(toView.center.x, fromeView.center.y);
            
            toView.center = CGPointMake(tempCenter.x, toView.center.y);
            
        } completion:^(BOOL finished) {
            
        }];
        
        index ++;
        // 将任务添加到队列
    }

}



@end
