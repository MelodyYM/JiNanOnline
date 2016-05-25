//
//  LeftView.m
//  PeopleOnline
//
//  Created by yangming on 16/5/25.
//  Copyright © 2016年 com.PeopleOnline. All rights reserved.
//

#import "LeftView.h"

@implementation LeftView

- (instancetype)initWithFrame:(CGRect)frame{
    
    self = [super initWithFrame:frame];
    
    if (self) {
        [self addAllViews];
    }
    return self;
}

-(void)addAllViews{
    
    
    CGFloat leftViewW = self.frame.size.width;
    CGFloat leftViewH = self.frame.size.height;
    
    UIView *bgView = [UIView alloc]initWithFrame:CGRectMake(0, 0, leftViewW, 44);
    
}


@end
