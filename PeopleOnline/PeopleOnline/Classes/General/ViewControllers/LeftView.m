//
//  LeftView.m
//  PeopleOnline
//
//  Created by yangming on 16/5/25.
//  Copyright © 2016年 com.PeopleOnline. All rights reserved.
//

#import "LeftView.h"

@implementation LeftView

#pragma mark - 初始化

- (instancetype)initWithFrame:(CGRect)frame{
    
    self = [super initWithFrame:frame];
    
    if (self) {
        [self addAllViews];
    }
    return self;
}

#pragma mark - 添加视图

-(void)addAllViews{
    
    self.backgroundColor = [UIColor whiteColor];
    
    CGFloat leftViewW = self.frame.size.width-90;
    CGFloat leftViewH = self.frame.size.height;
    
    UIView *bgView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, leftViewW-5, 64)];
    bgView.layer.masksToBounds = YES;
    bgView.layer.cornerRadius = 5;
    bgView.backgroundColor = [UIColor colorWithRed:0.475 green:0.718 blue:1.000 alpha:1.000];
    [self addSubview:bgView];
    
    
    UILabel *serviceLable = [[UILabel alloc]initWithFrame:CGRectMake(20, 20, 150, 44)];
//    serviceLable.backgroundColor = [UIColor redColor];
    serviceLable.text = @"市民服务热线";
    serviceLable.font = [UIFont boldSystemFontOfSize:20];
    serviceLable.textColor = [UIColor whiteColor];
    [bgView addSubview:serviceLable];
    
    UILabel *cityLable = [[UILabel alloc]initWithFrame:CGRectMake(bgView.frame.size.width-60, 20, 60, 44)];
    cityLable.text = @"济南";
    cityLable.textColor = [UIColor whiteColor];
    cityLable.font = [UIFont boldSystemFontOfSize:20];
//    cityLable.backgroundColor = [UIColor redColor];
    [bgView addSubview:cityLable];
    
    
    UIView *loginView = [[UIView alloc]initWithFrame:CGRectMake(0, CGRectGetMaxY(bgView.frame), leftViewW, 60)];
    loginView.backgroundColor = [UIColor redColor];
    [self addSubview:loginView];
    
    UIImageView *logImageView = [UIImageView alloc]initWithImage:[UIImage imageNamed:]
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    

}


@end
